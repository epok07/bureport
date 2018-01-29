<?php
class Controller_Machinery extends Controller_Template
{

	public function action_index()
	{
		$data['machineries'] = Model_Machinery::find('all');
		$this->template->title = "Machineries";
		$this->template->content = View::forge('machinery/index', $data);

	}

	public function action_view($id = null)
	{
		is_null($id) and Response::redirect('machinery');

		if ( ! $data['machinery'] = Model_Machinery::find($id))
		{
			Session::set_flash('error', 'Could not find machinery #'.$id);
			Response::redirect('machinery');
		}

		$this->template->title = "Machinery";
		$this->template->content = View::forge('machinery/view', $data);

	}

	public function action_create()
	{
		if (Input::method() == 'POST')
		{
			$val = Model_Machinery::validate('create');

			if ($val->run())
			{
				$machinery = Model_Machinery::forge(array(
					'company_id' => Input::post('company_id'),
					'title' => Input::post('title'),
					'site_id' => Input::post('site_id'),
					'enabled' => Input::post('enabled'),
				));

				if ($machinery and $machinery->save())
				{
					Session::set_flash('success', 'Added machinery #'.$machinery->id.'.');

					Response::redirect('machinery');
				}

				else
				{
					Session::set_flash('error', 'Could not save machinery.');
				}
			}
			else
			{
				Session::set_flash('error', $val->error());
			}
		}

		$this->template->title = "Machineries";
		$this->template->content = View::forge('machinery/create');

	}

	public function action_edit($id = null)
	{
		is_null($id) and Response::redirect('machinery');

		if ( ! $machinery = Model_Machinery::find($id))
		{
			Session::set_flash('error', 'Could not find machinery #'.$id);
			Response::redirect('machinery');
		}

		$val = Model_Machinery::validate('edit');

		if ($val->run())
		{
			$machinery->company_id = Input::post('company_id');
			$machinery->title = Input::post('title');
			$machinery->site_id = Input::post('site_id');
			$machinery->enabled = Input::post('enabled');

			if ($machinery->save())
			{
				Session::set_flash('success', 'Updated machinery #' . $id);

				Response::redirect('machinery');
			}

			else
			{
				Session::set_flash('error', 'Could not update machinery #' . $id);
			}
		}

		else
		{
			if (Input::method() == 'POST')
			{
				$machinery->company_id = $val->validated('company_id');
				$machinery->title = $val->validated('title');
				$machinery->site_id = $val->validated('site_id');
				$machinery->enabled = $val->validated('enabled');

				Session::set_flash('error', $val->error());
			}

			$this->template->set_global('machinery', $machinery, false);
		}

		$this->template->title = "Machineries";
		$this->template->content = View::forge('machinery/edit');

	}

	public function action_delete($id = null)
	{
		is_null($id) and Response::redirect('machinery');

		if ($machinery = Model_Machinery::find($id))
		{
			$machinery->delete();

			Session::set_flash('success', 'Deleted machinery #'.$id);
		}

		else
		{
			Session::set_flash('error', 'Could not delete machinery #'.$id);
		}

		Response::redirect('machinery');

	}

}
