<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB as FacadesDB;

use function Laravel\Prompts\select;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $users = User::all();
        return response()->json($users);
    }

    /**
     * Show the form for creating a new resource.
     */
    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        // You can create a view for the user creation form if needed.
        return view('users.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $users = new User();
        $users->userID = $request->userID;
        $users->name = $request->name;
        $users->email = $request->email;
        $users->password = md5($request->password);
        $users->role = $request->role;
        $users->save();

        return response()->json($users, 201);
    }

    public function getbyEmail(string $email)
    {
        $data = FacadesDB::table('users')
            ->where('email', $email)
            ->get();

        return response()->json($data); // Mengembalikan data dalam format JSON
    }


    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $user = User::findOrFail($id);
        return response()->json($user);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        // You can create a view for the user edit form if needed.
        $user = User::findOrFail($id);
        return view('users.edit', compact('user'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $data = $request->validate([
            'name' => 'required',
            'email' => 'required|email|unique:users,email,' . $id,
            'password' => 'required',
            'role' => 'required',
        ]);

        $user = User::findOrFail($id);
        $user->update($data);

        return response()->json($user, 200);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $user = User::findOrFail($id);
        $user->delete();

        return response()->json(null, 204);
    }

    public function getEPR()
    {

        //mengambil data darri database menggunakan db::table() dan disimpan ke dalam $data
        //menggunakan ->join() untuk menggabungkan tabel lainnya
        //diakhir get() untuk mengambil data array
        //diakhir first() jika hanya satu data yang diambil

        $data = FacadesDB::table('users')
            ->select('users.email', 'users.password', 'users.role')
            ->get();

        //tampilkan view barang dan kirim datanya ke view tersebut
        return response()->json($data, 200);
    }

    

    // public function joinbyEmail(string $email)
    // {
    //     $data = FacadesDB::table('users')
    //         ->join('siswas', 'users.email', '=', 'siswas.email')
    //         ->select('users.*', 'siswas.*')
    //         ->
    //         ->get();

    //     return response()->json($data);
    // }
}
