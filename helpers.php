<?php
/**
 * Created by PhpStorm.
 * User: ASUS
 * Date: 2017/3/29
 * Time: 16:58
 */
function generateTree($items){
    $tree = array();
    foreach($items as $item){
        if(isset($items[$item['pid']])){
            $items[$item['pid']]['son'][] = &$items[$item['id']];
        }else{
            $tree[] = &$items[$item['id']];
        }
    }
    return $tree;
}