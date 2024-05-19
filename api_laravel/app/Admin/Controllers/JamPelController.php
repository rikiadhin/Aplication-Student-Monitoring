<?php

namespace App\Admin\Controllers;

use App\Models\JamPel;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class JamPelController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'JamPel';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new JamPel());

        $grid->column('id', __('Id'));
        $grid->column('id_jamPel', __('Id jamPel'));
        $grid->column('jamPelajaran', __('JamPelajaran'));
        $grid->column('waktu mulai', __('Waktu mulai'));
        $grid->column('waktu selesai', __('Waktu selesai'));
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
        $show = new Show(JamPel::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('id_jamPel', __('Id jamPel'));
        $show->field('jamPelajaran', __('JamPelajaran'));
        $show->field('waktu mulai', __('Waktu mulai'));
        $show->field('waktu selesai', __('Waktu selesai'));
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
        $form = new Form(new JamPel());

        $form->text('id_jamPel', __('Id jamPel'));
        $form->text('jamPelajaran', __('JamPelajaran'));
        $form->time('waktu mulai', __('Waktu mulai'))->default(date('H:i:s'));
        $form->time('waktu selesai', __('Waktu selesai'))->default(date('H:i:s'));

        return $form;
    }
}
