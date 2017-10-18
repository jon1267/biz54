<?php

namespace App\Repositories;

abstract class Repository
{
    protected $model = false;

    //вернет коллекцию моделей
    public function get($select = '*', $take = false, $pagination = false, $where = false)
    {
        // если $select = '*' выбираются все поля муск. табл.
        // если $select = ['id', 'title', 'desc'] - выбираются токо эти поля
        $builder = $this->model->select($select);

        //выбор нужного кол-ва записей из табл.
        if($take) {
            $builder->take($take);
        }

        //это реализация Model::where('destination', 'San Diego')
        //те пользовать видимо ['active',1]
        if($where) {
            $builder->where($where[0], $where[1]);
        }
        //pagination
        if($pagination) {
            return $builder->paginate($pagination);
        }

        return $builder->get();
    }

    /**
     * @param or $id, or array = ['alias', $alias]
     * если на входе массив, то не ассоциативный, а простой (скалярный)
     * из 2 значений, $arr[0]= имя поля  и $arr[1]= его значение
     * @return mixed or one model, or null
     */
    public function one($id) {

        if(is_array($id)) {
            return $this->model->where($id[0], $id[1])->first();
        }

        return $this->model->where('id', $id)->first();
        //return $this->model->where('alias', $alias)->first();
    }
}