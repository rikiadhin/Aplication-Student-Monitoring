<?php

namespace App\Admin\Controllers;

use App\Models\OrangTua;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class OrangtuaController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'OrangTua';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new OrangTua());

        $grid->column('id', __('Id'));
        $grid->column('id_orangtua', __('Id orangtua'));
        $grid->column('nama', __('Nama'));
        $grid->column('email', __('Email'));
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
        $show = new Show(OrangTua::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('id_orangtua', __('Id orangtua'));
        $show->field('nama', __('Nama'));
        $show->field('email', __('Email'));
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
        $form = new Form(new OrangTua());

        $form->text('id_orangtua', __('Id orangtua'));
        $form->text('nama', __('Nama'));
        $form->email('email', __('Email'));
        $form->text('nomor', __('Nomor'));
        $form->text('alamat', __('Alamat'));

        return $form;
    }
}
