<?php

namespace App\Http\Controllers;

use App\Models\Guru;
use Illuminate\Support\Facades\DB as FacadesDB;
use Illuminate\Http\Request;

class GuruController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $guru = Guru::all();
        return response()->json($guru);
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

    public function getbyEmail(string $email)
    {
        $data = FacadesDB::table('gurus')
            ->join('mapels', 'mapels.id_mapel', '=', 'gurus.id_mapel')
            ->select('gurus.*', 'mapels.*')
            ->where('gurus.email', $email)
            ->get();

        return response()->json($data);
    }
}
