<?php

namespace App\Admin\Controllers;

use App\Models\Jadwal;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class JadwalController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Jadwal';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Jadwal());

        $grid->column('id', __('Id'));
        $grid->column('hari', __('Hari'));
        $grid->column('id_kelas', __('Id kelas'));
        $grid->column('id_jamPel', __('Id jamPel'));
        $grid->column('id_mapel', __('Id mapel'));
        $grid->column('id_guru', __('Id guru'));
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
        $show = new Show(Jadwal::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('hari', __('Hari'));
        $show->field('id_kelas', __('Id kelas'));
        $show->field('id_jamPel', __('Id jamPel'));
        $show->field('id_mapel', __('Id mapel'));
        $show->field('id_guru', __('Id guru'));
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
        $form = new Form(new Jadwal());

        $form->text('hari', __('Hari'));
        $form->text('id_kelas', __('Id kelas'));
        $form->text('id_jamPel', __('Id jamPel'));
        $form->text('id_mapel', __('Id mapel'));
        $form->text('id_guru', __('Id guru'));

        return $form;
    }
}
