<?php

namespace App\Admin\Controllers;

use App\Models\Guru;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class GuruController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Guru';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Guru());

        $grid->column('id', __('Id'));
        $grid->column('id_guru', __('Id guru'));
        $grid->column('nama', __('Nama'));
        $grid->column('email', __('Email'));
        $grid->column('id_mapel', __('Id mapel'));
        $grid->column('nomor', __('Nomor'));
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
        $show = new Show(Guru::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('id_guru', __('Id guru'));
        $show->field('nama', __('Nama'));
        $show->field('email', __('Email'));
        $show->field('id_mapel', __('Id mapel'));
        $show->field('nomor', __('Nomor'));
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
        $form = new Form(new Guru());

        $form->text('id_guru', __('Id guru'));
        $form->text('nama', __('Nama'));
        $form->email('email', __('Email'));
        $form->text('id_mapel', __('Id mapel'));
        $form->text('nomor', __('Nomor'));
        $form->text('alamat', __('Alamat'));

        return $form;
    }
}
