<?php

namespace App\Http\Controllers;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;

class AccountController extends Controller
{
    //
    public function index(){

        return view("dashboard.auth.accountlogin");
    }
    public function loginstore(Request $request)
    {
        $request->validate([
            'email' => 'required|email',
            'password' => 'required|min:6',
        ]);

        $credentials = $request->only('email', 'password');

        if (Auth::attempt($credentials)) {
            // Authenticated successfully
            $user = Auth::user();

            // Check the user's role
            if ($user->role == 1) {
                return redirect()->route('dashboard.welcome');
            }
            else {
                Auth::logout();
                return redirect('/login')->with('status', 'Unauthorized Access');
            }
        }

        // If authentication fails, redirect back with error message
        return redirect('/account/login')->with('login_error', 'Incorrect Email & Password');

    }
    public function logout(Request $request)
{
    Auth::logout();
    $request->session()->invalidate();
    $request->session()->regenerateToken();

    return redirect('/account/login')->with('status', 'Logged out successfully');
}
}
