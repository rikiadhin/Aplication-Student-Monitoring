<?php

namespace App\Admin\Controllers;

use App\Models\Siswa;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class SiswaController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Siswa';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Siswa());

        $grid->column('id', __('Id'));
        $grid->column('id_siswa', __('Id siswa'));
        $grid->column('name', __('Name'));
        $grid->column('password', __('Password'));
        $grid->column('id_kelas', __('Id kelas'));
        $grid->column('nomor', __('Nomor'));
        $grid->column('id_waliKelas', __('Id waliKelas'));
        $grid->column('alamat', __('Alamat'));
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
        $show = new Show(Siswa::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('id_siswa', __('Id siswa'));
        $show->field('name', __('Name'));
        $show->field('password', __('Password'));
        $show->field('id_kelas', __('Id kelas'));
        $show->field('nomor', __('Nomor'));
        $show->field('id_waliKelas', __('Id waliKelas'));
        $show->field('alamat', __('Alamat'));
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
        $form = new Form(new Siswa());

        $form->text('id_siswa', __('Id siswa'));
        $form->text('name', __('Name'));
        $form->password('password', __('Password'));
        $form->text('id_kelas', __('Id kelas'));
        $form->text('nomor', __('Nomor'));
        $form->text('id_waliKelas', __('Id waliKelas'));
        $form->text('alamat', __('Alamat'));

        return $form;
    }
}
