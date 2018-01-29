<?php
class Controller_Silo extends Controller_Admin
{
	public $template = "_layout/inspinia";

	public function action_index()
	{
		$data['silos'] = Model_Silo::find('all', array(
                    'related' => array(
                        'loadings' 
                        )
                
            ));
		$capacity_rate = []; 
		foreach ($data['silos'] as $key => $_silo) {
			$capacity_rate[$key] = Model_Silo::get_current_capacity_rate($_silo->id);
		}
		$data['capacity_rate'] = $capacity_rate;
		//Debug::dump($capacity_rate);
		$data["subnav"] = array('index'=> 'active' );
		$this->template->title = "Silos";
		$this->template->content = View::forge('silo/index', $data);

	}

	public function action_view($id = null)
	{
		is_null($id) and Response::redirect('silo');

		if ( ! $data['silo'] = Model_Silo::find($id))
		{
			Session::set_flash('error', 'Could not find silo #'.$id);
			Response::redirect('silo');
		}
		$data["subnav"] = array('view'=> 'active' );
		$this->template->title = "Silo";
		$this->template->content = View::forge('silo/view', $data);

	}

	public function action_create()
	{
		if (Input::method() == 'POST')
		{
			$val = Model_Silo::validate('create');

			if ($val->run())
			{
				$silo = Model_Silo::forge(array(
					'company_id' => Input::post('company_id'),
					'title' => Input::post('title'),
					'capacity' => Input::post('capacity'),
					'unit' => Input::post('unit'),
					'item_id' => Input::post('item_id'),
					'site_id' => Input::post('site_id'),
					'enabled' => Input::post('enabled'),
				));

				if ($silo and $silo->save())
				{
					Session::set_flash('success', 'Added silo #'.$silo->id.'.');

					Response::redirect('silo');
				}

				else
				{
					Session::set_flash('error', 'Could not save silo.');
				}
			}
			else
			{
				Session::set_flash('error', $val->error());
			}
		}

		$this->template->title = "Silos";
		$this->template->content = View::forge('silo/create');

	}

	public function action_edit($id = null)
	{
		is_null($id) and Response::redirect('silo');

		if ( ! $silo = Model_Silo::find($id))
		{
			Session::set_flash('error', 'Could not find silo #'.$id);
			Response::redirect('silo');
		}

		$val = Model_Silo::validate('edit');

		if ($val->run())
		{
			$silo->company_id = Input::post('company_id');
			$silo->title = Input::post('title');
			$silo->capacity = Input::post('capacity');
			$silo->unit = Input::post('unit');
			$silo->item_id = Input::post('item_id');
			$silo->site_id = Input::post('site_id');
			$silo->enabled = Input::post('enabled');

			if ($silo->save())
			{
				Session::set_flash('success', 'Updated silo #' . $id);

				Response::redirect('silo');
			}

			else
			{
				Session::set_flash('error', 'Could not update silo #' . $id);
			}
		}

		else
		{
			if (Input::method() == 'POST')
			{
				$silo->company_id = $val->validated('company_id');
				$silo->title = $val->validated('title');
				$silo->capacity = $val->validated('capacity');
				$silo->unit = $val->validated('unit');
				$silo->item_id = $val->validated('item_id');
				$silo->site_id = $val->validated('site_id');
				$silo->enabled = $val->validated('enabled');

				Session::set_flash('error', $val->error());
			}

			$this->template->set_global('silo', $silo, false);
		}

		$this->template->title = "Silos";
		$this->template->content = View::forge('silo/edit');

	}

	public function action_delete($id = null)
	{
		is_null($id) and Response::redirect('silo');

		if ($silo = Model_Silo::find($id))
		{
			$silo->delete();

			Session::set_flash('success', 'Deleted silo #'.$id);
		}

		else
		{
			Session::set_flash('error', 'Could not delete silo #'.$id);
		}

		Response::redirect('silo');

	}

}
