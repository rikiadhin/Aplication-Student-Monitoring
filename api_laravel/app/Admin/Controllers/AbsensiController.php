<?php

namespace App\Admin\Controllers;

use App\Models\Absensi;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class AbsensiController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Absensi';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Absensi());

        $grid->column('id', __('Id'));
        $grid->column('id_absensi', __('Id absensi'));
        $grid->column('id_siswa', __('Id siswa'));
        $grid->column('nama', __('Nama'));
        $grid->column('id_mapel', __('Id mapel'));
        $grid->column('materi', __('Materi'));
        $grid->column('tanggal', __('Tanggal'));
        $grid->column('id_jamPel', __('Id jamPel'));
        $grid->column('status', __('Status'));
        $grid->column('created_at', __('Created at'));
        $grid->column('updated_at', __('Updated at'));

        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(Absensi::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('id_absensi', __('Id absensi'));
        $show->field('id_siswa', __('Id siswa'));
        $show->field('nama', __('Nama'));
        $show->field('id_mapel', __('Id mapel'));
        $show->field('materi', __('Materi'));
        $show->field('tanggal', __('Tanggal'));
        $show->field('id_jamPel', __('Id jamPel'));
        $show->field('status', __('Status'));
        $show->field('created_at', __('Created at'));
        $show->field('updated_at', __('Updated at'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Absensi());

        $form->text('id_absensi', __('Id absensi'));
        $form->text('id_siswa', __('Id siswa'));
        $form->text('nama', __('Nama'));
        $form->text('id_mapel', __('Id mapel'));
        $form->text('materi', __('Materi'));
        $form->date('tanggal', __('Tanggal'))->default(date('Y-m-d'));
        $form->text('id_jamPel', __('Id jamPel'));
        $form->text('status', __('Status'));

        return $form;
    }
}
