<?php

namespace App\Admin\Controllers;

use App\Models\MateriTugas;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class MateriTugasController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'MateriTugas';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new MateriTugas());

        $grid->column('id', __('Id'));
        $grid->column('id_mt', __('Id mt'));
        $grid->column('nama', __('Nama'));
        $grid->column('id_jamPel', __('Id jamPel'));
        $grid->column('jenis', __('Jenis'));
        $grid->column('waktu_mulai', __('Waktu mulai'));
        $grid->column('waktu_selesai', __('Waktu selesai'));
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
        $show = new Show(MateriTugas::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('id_mt', __('Id mt'));
        $show->field('nama', __('Nama'));
        $show->field('id_jamPel', __('Id jamPel'));
        $show->field('jenis', __('Jenis'));
        $show->field('waktu_mulai', __('Waktu mulai'));
        $show->field('waktu_selesai', __('Waktu selesai'));
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
        $form = new Form(new MateriTugas());

        $form->text('id_mt', __('Id mt'));
        $form->text('nama', __('Nama'));
        $form->text('id_jamPel', __('Id jamPel'));
        $form->text('jenis', __('Jenis'));
        $form->time('waktu_mulai', __('Waktu mulai'))->default(date('H:i:s'));
        $form->time('waktu_selesai', __('Waktu selesai'))->default(date('H:i:s'));

        return $form;
    }
}
