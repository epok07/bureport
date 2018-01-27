<?php
class Controller_Todo extends Controller_Admin
{
	public $template = "_layout/inspinia";

	public function action_index()
	{
		$data['todos'] = Model_Todo::find('all');
		$this->template->title = "Todos";
		$this->template->content = View::forge('todo/index', $data);

	}

	public function action_view($id = null)
	{
		is_null($id) and Response::redirect('todo');

		if ( ! $data['todo'] = Model_Todo::find($id))
		{
			Session::set_flash('error', 'Could not find todo #'.$id);
			Response::redirect('todo');
		}

		$this->template->title = "Todo";
		$this->template->content = View::forge('todo/view', $data);

	}

	public function action_create()
	{
		if (Input::method() == 'POST')
		{
			$val = Model_Todo::validate('create');

			if ($val->run())
			{
				$todo = Model_Todo::forge(array(
					'created_by' => Input::post('created_by'),
					'title' => Input::post('title'),
					'description' => Input::post('description'),
					'labels' => Input::post('labels'),
					'status' => Input::post('status'),
					'start_date' => Input::post('start_date'),
				));

				if ($todo and $todo->save())
				{
					Session::set_flash('success', 'Added todo #'.$todo->id.'.');

					Response::redirect('todo');
				}

				else
				{
					Session::set_flash('error', 'Could not save todo.');
				}
			}
			else
			{
				Session::set_flash('error', $val->error());
			}
		}

		$this->template->title = "Todos";
		$this->template->content = View::forge('todo/create');

	}

	public function action_edit($id = null)
	{
		is_null($id) and Response::redirect('todo');

		if ( ! $todo = Model_Todo::find($id))
		{
			Session::set_flash('error', 'Could not find todo #'.$id);
			Response::redirect('todo');
		}

		$val = Model_Todo::validate('edit');

		if ($val->run())
		{
			$todo->created_by = Input::post('created_by');
			$todo->title = Input::post('title');
			$todo->description = Input::post('description');
			$todo->labels = Input::post('labels');
			$todo->status = Input::post('status');
			$todo->start_date = Input::post('start_date');

			if ($todo->save())
			{
				Session::set_flash('success', 'Updated todo #' . $id);

				Response::redirect('todo');
			}

			else
			{
				Session::set_flash('error', 'Could not update todo #' . $id);
			}
		}

		else
		{
			if (Input::method() == 'POST')
			{
				$todo->created_by = $val->validated('created_by');
				$todo->title = $val->validated('title');
				$todo->description = $val->validated('description');
				$todo->labels = $val->validated('labels');
				$todo->status = $val->validated('status');
				$todo->start_date = $val->validated('start_date');

				Session::set_flash('error', $val->error());
			}

			$this->template->set_global('todo', $todo, false);
		}

		$this->template->title = "Todos";
		$this->template->content = View::forge('todo/edit');

	}

	public function action_delete($id = null)
	{
		is_null($id) and Response::redirect('todo');

		if ($todo = Model_Todo::find($id))
		{
			$todo->delete();

			Session::set_flash('success', 'Deleted todo #'.$id);
		}

		else
		{
			Session::set_flash('error', 'Could not delete todo #'.$id);
		}

		Response::redirect('todo');

	}

}
