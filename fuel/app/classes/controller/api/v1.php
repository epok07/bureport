<?php

class Controller_Api_V1 extends Controller_Rest
{
	public $format = 'json';

	public function get_index()
	{
		// create a Request_Curl object
		// $curl = Request::forge(Uri::base().'/api.php/', 'curl');
		// assume some parameters and options were set, and execute
		// $body = $curl->execute();

		return $this->response(array(
            'foo' => Input::get('foo'),
            'baz' => array(
                1, 50, 219
            ),
            'empty' => null
        ));


		return $this->response(array(
             "body" => $body 
        ));



		// create a custom response
		 // $curl->set_response( $body , $this->response_info('http_code', 200), 'json', 
		 //	//array('auth-token' => 'WV4YaeV8QeWVVVOE')
		 //	array()
		// 	);
	}

	protected function validateHash()

    {

        $request = file_get_contents('php://input');

        $requestHeaders = apache_request_headers();



        if (!isset($requestHeaders['X-Auth']) || !isset($requestHeaders['X-Auth-Hash'])) {

            $this->response('fail!',401);

        } else {

            // we have the headers - let's match!

            $user = Model_User::find()->where('public_key',$requestHeaders['X-Auth'])->get_one();



            if ($user !== null) {

                $hash = hash_hmac('sha256',$request,$user->private_key);

                return ($hash == $requestHeaders['X-Auth-Hash']) ? true : false;

            } else {

                return false;

            }

        }

    }



    public function post_index()

    {

        // return the user details here....

    }



    public function router($resource, array $arguments)

    {

        if ($this->validateHash() == false) {

            $resource = 'error';

            $arguments = array('Not Authorized',401);

        }



        parent::router($resource,$arguments);

    }

}
