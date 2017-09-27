<?php

namespace App\Http\Controllers\Api\v1;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Mail;

class ConfigController extends Controller
{
    private $email = '654037450@qq.com';
    private $email163 = 'zyf880916@163.com';
    public function sendEmail(Request $request){
        $data = $request->only('name', 'email', 'phone', 'subject');
        if ($request->get('message')) {
            $data['messageLines'] = explode("\n", $request->get('message'));
        } else {
            $data['messageLines'] = [];
        }

        if($data['subject']){
            $subject = '自得其乐主题： '.$data['subject'];
        } else {
            $subject = '联系我们发来的信息，相关人员名字： '.$data['name'];
        }
        Mail::send('email', $data, function ($message) use ($data, $subject) {
            $message->subject($subject)
                ->to($this->email)
                ->bcc($this->email163)
                ->replyTo($data['email']);
        });
    }

    public function singleType()
    {
        $single_type = config('setting.single_type');
        return json_encode($single_type);
    }
}