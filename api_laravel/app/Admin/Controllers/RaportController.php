<?php

namespace App\Admin\Controllers;

use App\Models\Raport;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class RaportController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Raport';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Raport());

        $grid->column('id', __('Id'));
        $grid->column('id_raport', __('Id raport'));
        $grid->column('id_siswa', __('Id siswa'));
        $grid->column('id_guru', __('Id guru'));
        $grid->column('semester', __('Semester'));
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
        $show = new Show(Raport::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('id_raport', __('Id raport'));
        $show->field('id_siswa', __('Id siswa'));
        $show->field('id_guru', __('Id guru'));
        $show->field('semester', __('Semester'));
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
        $form = new Form(new Raport());

        $form->text('id_raport', __('Id raport'));
        $form->text('id_siswa', __('Id siswa'));
        $form->text('id_guru', __('Id guru'));
        $form->text('semester', __('Semester'));

        return $form;
    }
}
