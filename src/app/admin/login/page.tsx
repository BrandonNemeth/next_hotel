"use client";
import { useState, useEffect } from "react"; // Added useEffect
import { useRouter } from "next/navigation";
import { Card, CardHeader, CardTitle, CardContent } from "@/components/ui/card";
import { Input } from "@/components/ui/input";
import { Button } from "@/components/ui/button";
import { Label } from "@/components/ui/label";

export default function AdminLoginPage() {
  const router = useRouter();
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [error, setError] = useState("");
  const [loading, setLoading] = useState(false);

  useEffect(() => {
    if (localStorage.getItem("isAdminAuthenticated") === "true") {
      router.replace("/");
    }
  }, [router]);

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    setError("");
    setLoading(true);

    console.log("Admin login attempt:", { email, password });
    await new Promise((resolve) => setTimeout(resolve, 1000)); // API call

    if (email === "admin@nexthotel.com" && password === "admin123") {
      //login
      localStorage.setItem("isAdminAuthenticated", "true"); //AUTH FLAG
      router.push("/"); // main page
    } else {
      setError("Invalid email or password.");
      localStorage.removeItem("isAdminAuthenticated"); // flag  on failure
    }
    setLoading(false);
  };

  return (
    <div className="flex min-h-screen items-center justify-center bg-gradient-to-br from-[#272822] to-[#4A4B46]">
      <Card className="w-full max-w-md shadow-xl bg-white">
        <CardHeader>
          <CardTitle className="text-center text-2xl text-[#272822]">
            Next Hotel
          </CardTitle>
        </CardHeader>
        <CardContent>
          <form className="space-y-6" onSubmit={handleSubmit}>
            <div>
              <Label htmlFor="email" className="text-gray-700">
                Email
              </Label>
              <Input
                id="email"
                name="email"
                type="email"
                autoComplete="email"
                value={email}
                onChange={(e) => setEmail(e.target.value)}
                required
                className="mt-1"
              />
            </div>
            <div>
              <Label htmlFor="password" className="text-gray-700">
                Password
              </Label>
              <Input
                id="password"
                name="password"
                type="password"
                autoComplete="current-password"
                value={password}
                onChange={(e) => setPassword(e.target.value)}
                required
                className="mt-1"
              />
            </div>
            {error && (
              <p className="text-sm text-red-600 text-center">{error}</p>
            )}
            <div>
              <Button
                type="submit"
                className="w-full mt-4 bg-[#A80000] hover:bg-[#8A0000] text-white"
                disabled={loading}
              >
                {loading ? "Logging in..." : "Login"}
              </Button>
            </div>
          </form>
        </CardContent>
      </Card>
    </div>
  );
}
