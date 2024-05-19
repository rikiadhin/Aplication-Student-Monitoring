<?php

namespace App\Http\Controllers;

use App\Models\Jadwal;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB as FacadesDB;

class JadwalController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $users = Jadwal::all();
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
        //
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

    public function getJadwal(string $mapel, string $jampel)
    {
        $data = FacadesDB::table('jadwals')
            //     ->join('siswas', 'absensis.id_siswa', '=', 'siswas.id_kelas')
            ->join('mapels', 'jadwals.id_mapel', '=', 'mapels.id_mapel')
            ->join('jam_pels', 'jadwals.id_jamPel', '=', 'jam_pels.id_jamPel')
            ->join('kelas', 'jadwals.id_kelas', '=', 'kelas.id_kelas')
            //     ->join('jadwals', 'kelas.id_kelas', '=', 'jadwals.id_kelas')
            ->join('gurus', 'jadwals.id_mapel', '=', 'gurus.id_mapel')
            // ->join('users', 'gurus.email', '=', 'users.email')
            ->select('jam_pels.*', 'mapels.*', 'gurus.*')
            ->where('jadwals.id_mapel', $mapel)
            ->where('jadwals.id_jamPel', $jampel)
            ->get();

        return response()->json($data);
    }

    public function getJadwalGuru(string $email)
    {
        $data = FacadesDB::table('gurus')
            ->join('mapels', 'gurus.id_mapel', '=', 'mapels.id_mapel')
            ->join('jadwals', 'jadwals.id_guru', '=', 'gurus.id_guru')
            ->join('kelas', 'jadwals.id_kelas', '=', 'kelas.id_kelas')
            ->join('jam_pels', 'jadwals.id_jamPel', '=', 'jam_pels.id_jamPel')
            // ->join('users', 'gurus.email', '=', 'users.email')
            ->select('kelas.*', 'jadwals.*', 'jam_pels.*', 'mapels.*', 'gurus.*')
            ->where('gurus.email', $email)
            ->where('jadwals.hari', 'Senin')
            ->get();

        return response()->json($data);
    }
}
