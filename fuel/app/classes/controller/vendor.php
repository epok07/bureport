<?php
class Controller_Vendor extends Controller_Admin
{
	public $template = "_layout/inspinia";

	public function action_index()
	{
		$data['vendors'] = Model_Vendor::find('all');
		$this->template->title = "Vendors";
		$this->template->content = View::forge('vendor/index', $data);

	}

	public function action_view($id = null)
	{
		is_null($id) and Response::redirect('vendor');

		if ( ! $data['vendor'] = Model_Vendor::find($id))
		{
			Session::set_flash('error', 'Could not find vendor #'.$id);
			Response::redirect('vendor');
		}

		$this->template->title = "Vendor";
		$this->template->content = View::forge('vendor/view', $data);

	}

	public function action_create()
	{
		if (Input::method() == 'POST')
		{
			$val = Model_Vendor::validate('create');

			if ($val->run())
			{
				$vendor = Model_Vendor::forge(array(
					'company_id' => Input::post('company_id'),
					'user_id' => Input::post('user_id'),
					'phone' => Input::post('phone'),
					'email' => Input::post('email'),
					'website' => Input::post('website'),
					'title' => Input::post('title'),
					'enabled' => Input::post('enabled'),
				));

				if ($vendor and $vendor->save())
				{
					Session::set_flash('success', 'Added vendor #'.$vendor->id.'.');

					Response::redirect('vendor');
				}

				else
				{
					Session::set_flash('error', 'Could not save vendor.');
				}
			}
			else
			{
				Session::set_flash('error', $val->error());
			}
		}

		$this->template->title = "Vendors";
		$this->template->content = View::forge('vendor/create');

	}

	public function action_edit($id = null)
	{
		is_null($id) and Response::redirect('vendor');

		if ( ! $vendor = Model_Vendor::find($id))
		{
			Session::set_flash('error', 'Could not find vendor #'.$id);
			Response::redirect('vendor');
		}

		$val = Model_Vendor::validate('edit');

		if ($val->run())
		{
			$vendor->company_id = Input::post('company_id');
			$vendor->user_id = Input::post('user_id');
			$vendor->phone = Input::post('phone');
			$vendor->email = Input::post('email');
			$vendor->website = Input::post('website');
			$vendor->title = Input::post('title');
			$vendor->enabled = Input::post('enabled');

			if ($vendor->save())
			{
				Session::set_flash('success', 'Updated vendor #' . $id);

				Response::redirect('vendor');
			}

			else
			{
				Session::set_flash('error', 'Could not update vendor #' . $id);
			}
		}

		else
		{
			if (Input::method() == 'POST')
			{
				$vendor->company_id = $val->validated('company_id');
				$vendor->user_id = $val->validated('user_id');
				$vendor->phone = $val->validated('phone');
				$vendor->email = $val->validated('email');
				$vendor->website = $val->validated('website');
				$vendor->title = $val->validated('title');
				$vendor->enabled = $val->validated('enabled');

				Session::set_flash('error', $val->error());
			}

			$this->template->set_global('vendor', $vendor, false);
		}

		$this->template->title = "Vendors";
		$this->template->content = View::forge('vendor/edit');

	}

	public function action_delete($id = null)
	{
		is_null($id) and Response::redirect('vendor');

		if ($vendor = Model_Vendor::find($id))
		{
			$vendor->delete();

			Session::set_flash('success', 'Deleted vendor #'.$id);
		}

		else
		{
			Session::set_flash('error', 'Could not delete vendor #'.$id);
		}

		Response::redirect('vendor');

	}

}
