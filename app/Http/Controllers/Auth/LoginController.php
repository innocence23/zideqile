<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\User;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Http\Request;
use Socialite;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = '/home';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }

    /**
     * 添加状态验证 status
     * //https://laracasts.com/discuss/channels/laravel/adding-a-condition-to-auth-login?page=1
     * @param Request $request
     * @return array
     */
    protected function credentials(Request $request)
    {
        return array_merge($request->only($this->username(), 'password'), ['status' => 1]);
    }

    /**
     * 重写前后台退出页面 要不前后台一起退出
     *
     * @return \Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector
     */
    public function logout()
    {
        $this->guard()->logout();
        return redirect($this->redirectTo);
    }

    /**
     * Redirect the user to the GitHub authentication page.
     *
     * @param $type github qq weixin google weibo
     *
     * @return Response
     */
    public function redirectToProvider($type)
    {
        return Socialite::driver($type)->redirect();
    }

    /**
     * Obtain the user information from GitHub.
     *
     * @return Response
     */
    /**
     * Obtain the user information from GitHub.
     *
     * @param $type github qq weixin google weibo
     *
     * @return \Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector
     */
    public function handleProviderCallback($type)
    {
        $user = Socialite::driver($type)->user();

        if(!User::where(['oauth_id'=>$user->id, 'oauth'=>$type])->first()){
            if ($res = User::where(['email'=>$user->email])->first()) {
                $res->oauth = $type;
                $res->oauth_id = $user->id;
                $res->avatar = $res->avatar ?: $user->avatar;
                $res->save();
            } else {
                $userModel = new User();
                $userModel->oauth = $type;
                $userModel->oauth_id = $user->id;
                $userModel->email = $user->email;
                $userModel->name = $user->nickname ?: $user->name;
                $userModel->avatar = $user->avatar;
                $userModel->password = '';
                $userModel->save();
            }
        }
        $userInstance = User::where(['oauth_id'=>$user->id, 'oauth'=>$type])->firstOrFail();
        $this->guard()->login($userInstance);
        return redirect($this->redirectTo);
    }
}
