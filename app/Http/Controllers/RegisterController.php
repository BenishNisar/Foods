<?php

namespace App\Http\Controllers;
use App\Models\User;
use Illuminate\Support\Facades\Hash; // Correct import for Hash
use Illuminate\Http\Request;

class RegisterController extends Controller
{
    public function index(){
return view('dashboard.auth.register');
    }
    public function store(Request $request){
$validated=$request->validate([
    'firstname'=>'required',
'email'=>'required',
'password'=>'required|min:6|confirmed',

]);
$validated["role"]=1;
$validated["password"]=Hash::make($validated['password']);
user::create($validated);
return redirect()->route("login");
    }

}
