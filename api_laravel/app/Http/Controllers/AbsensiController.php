<?php

namespace App\Http\Controllers;

use App\Models\Absensi;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB as FacadesDB;

class AbsensiController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $users = Absensi::all();
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

    public function getAbsensi(string $mapel, string $jampel)
    {
        $data = FacadesDB::table('absensis')
            ->join('siswas', 'siswas.id_siswa', '=', 'absensis.id_siswa')
            ->join('mapels', 'mapels.id_mapel', '=', 'absensis.id_mapel')
            ->join('jam_pels', 'jam_pels.id_jamPel', '=', 'absensis.id_jamPel')
            ->join('gurus', 'gurus.id_mapel', '=', 'absensis.id_mapel')
            ->select('absensis.*', 'mapels.*', 'jam_pels.*', 'gurus.namaGuru', 'siswas.name')
            ->where('absensis.id_mapel', $mapel)
            ->where('absensis.id_jamPel', $jampel)
            ->get();

        return response()->json($data);
    }

    public function getAbsensiGuru(string $mapel, string $email)
    {
        $data = FacadesDB::table('absensis')
            ->join('siswas', 'siswas.id_siswa', '=', 'absensis.id_siswa')
            ->join('mapels', 'mapels.id_mapel', '=', 'absensis.id_mapel')
            ->join('jam_pels', 'jam_pels.id_jamPel', '=', 'absensis.id_jamPel')
            ->join('gurus', 'gurus.id_mapel', '=', 'absensis.id_mapel')
            ->select('absensis.*', 'mapels.*', 'jam_pels.*', 'gurus.namaGuru', 'siswas.name')
            ->where('absensis.id_mapel', $mapel)
            ->where('absensis.id_jamPel', $email)
            ->get();

        return response()->json($data);
    }
}
