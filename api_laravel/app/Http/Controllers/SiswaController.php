<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Siswa;
use Illuminate\Support\Facades\DB as FacadesDB;

class SiswaController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $users = Siswa::all();
        return response()->json($users);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $users = new Siswa();
        $users->userID = $request->userID;
        $users->name = $request->name;
        $users->email = $request->email;
        $users->password = md5($request->password);
        $users->role = $request->role;
        $users->save();

        return response()->json($users, 201);
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }

    public function getid()
    {
        // $users = FacadesDB::table('users')->select('userID', 'role')->get();
        $profiles = FacadesDB::table('siswas')->select('id_siswa', 'password')->get();

        // Menggabungkan hasil kedua query ke dalam satu array

        //tampilkan view barang dan kirim datanya ke view tersebut
        return response()->json($profiles, 200);
    }

    public function getsiswabyKelas(string $email)
    {
        $data = FacadesDB::table('siswas')
            ->join('kelas', 'siswas.id_kelas', '=', 'kelas.id_kelas')
            ->join('jadwals', 'kelas.id_kelas', '=', 'jadwals.id_kelas')
            ->join('jam_pels', 'jadwals.id_jamPel', '=', 'jam_pels.id_jamPel')
            ->join('mapels', 'jadwals.id_mapel', '=', 'mapels.id_mapel')
            ->join('gurus', 'jadwals.id_guru', '=', 'gurus.id_guru')
            // ->join('users', 'gurus.email', '=', 'users.email')
            ->select('kelas.*', 'siswas.*', 'jadwals.*', 'jam_pels.*', 'mapels.*', 'gurus.*')
            ->where('siswas.email', $email)
            ->where('jadwals.hari', 'Senin')
            ->get();

        return response()->json($data);
    }
}
