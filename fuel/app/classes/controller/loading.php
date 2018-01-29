<?php
class Controller_Loading extends Controller_Admin
{
	public $template = "_layout/inspinia";

	public function action_index()
	{
		$data['loadings'] = Model_Loading::find('all');
		$this->template->title = "Loadings";
		$this->template->content = View::forge('loading/index', $data);

	}

	public function action_view($id = null)
	{
		is_null($id) and Response::redirect('loading');

		if ( ! $data['loading'] = Model_Loading::find($id))
		{
			Session::set_flash('error', 'Could not find loading #'.$id);
			Response::redirect('loading');
		}

		$this->template->title = "Loading";
		$this->template->content = View::forge('loading/view', $data);

	}

	public function action_create()
	{
		$volume = Model_Silo::get_current_capacity(1);
		$_test_silo = Model_Silo::find(1);
		
        Session::set_flash('success', 'Capacity := '.  $volume . " " . $_test_silo->capacity);

		if (Input::method() == 'POST')
		{
			$val = Model_Loading::validate('create');

			if ($val->run())
			{
				$loading = Model_Loading::forge(array(
					'company_id' => Input::post('company_id'),
					'user_id' => Input::post('user_id'),
					'start_date' => Input::post('start_date'),
					'item_id' => Input::post('item_id'),
					'machenery_id' => Input::post('machenery_id'),
					'silo_id' => Input::post('silo_id'),
					'weight' => Input::post('weight'),
					'unit' => Input::post('unit'),
					'vendor_id' => Input::post('vendor_id'),
					'site_id' => Input::post('site_id'),
					'canceled' => Input::post('canceled'),
				));
				$loading->items[$loading->item_id] = Model_Item::find($loading->item_id);
				// Check before save if capacity is not full
				//die(Session::get('exceeded'));
				$_test_silo = Model_Silo::find($loading->silo_id);
				if( $volume + $loading->weight > $_test_silo->capacity ){
					   
					   Session::set_flash('error', 'Could not save loading. <br> Capacity exceeded !'.Session::get('exceedent') ."t");
					   Response::redirect('loading/create');
				}
				if ($loading and $loading->save())
				{
					 
					// both main and related object already exist
					

					Session::set_flash('success', 'Added loading #'.$loading->id.'.');

					Response::redirect('loading');
				}

				else
				{
					Session::set_flash('error', 'Could not save loading.');
				}
			}
			else
			{
				Session::set_flash('error', $val->error());
			}
		}

		$this->template->title = "Loadings";
		$this->template->content = View::forge('loading/create');

	}

	public function action_edit($id = null)
	{
		is_null($id) and Response::redirect('loading');

		if ( ! $loading = Model_Loading::find($id))
		{
			Session::set_flash('error', 'Could not find loading #'.$id);
			Response::redirect('loading');
		}

		$val = Model_Loading::validate('edit');

		if ($val->run())
		{
			$loading->company_id = Input::post('company_id');
			$loading->user_id = Input::post('user_id');
			$loading->start_date = Input::post('start_date');
			$loading->item_id = Input::post('item_id');
			$loading->machenery_id = Input::post('machenery_id');
			$loading->silo_id = Input::post('silo_id');
			$loading->weight = Input::post('weight');
			$loading->unit = Input::post('unit');
			$loading->vendor_id = Input::post('vendor_id');
			$loading->site_id = Input::post('site_id');
			$loading->canceled = Input::post('canceled');

			if ($loading->save())
			{
				Session::set_flash('success', 'Updated loading #' . $id);

				Response::redirect('loading');
			}

			else
			{
				Session::set_flash('error', 'Could not update loading #' . $id);
			}
		}

		else
		{
			if (Input::method() == 'POST')
			{
				$loading->company_id = $val->validated('company_id');
				$loading->user_id = $val->validated('user_id');
				$loading->start_date = $val->validated('start_date');
				$loading->item_id = $val->validated('item_id');
				$loading->machenery_id = $val->validated('machenery_id');
				$loading->silo_id = $val->validated('silo_id');
				$loading->weight = $val->validated('weight');
				$loading->unit = $val->validated('unit');
				$loading->vendor_id = $val->validated('vendor_id');
				$loading->site_id = $val->validated('site_id');
				$loading->canceled = $val->validated('canceled');

				Session::set_flash('error', $val->error());
			}

			$this->template->set_global('loading', $loading, false);
		}

		$this->template->title = "Loadings";
		$this->template->content = View::forge('loading/edit');

	}

	public function action_delete($id = null)
	{
		is_null($id) and Response::redirect('loading');

		if ($loading = Model_Loading::find($id))
		{
			$loading->delete();

			Session::set_flash('success', 'Deleted loading #'.$id);
		}

		else
		{
			Session::set_flash('error', 'Could not delete loading #'.$id);
		}

		Response::redirect('loading');

	}

}
