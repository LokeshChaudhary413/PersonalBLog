<?php

namespace App\Http\Controllers;

use App\Models\Contact;
use GrahamCampbell\ResultType\Result;
use Illuminate\Http\Request;

class ContactController extends Controller
{
  public function insert(Request $request)
  {
    $request->validate([
      'name' => 'required',
      'email' => 'required|email',
      'phone' => 'required',
      'time' => 'required'
    ]);

    $model = new Contact();
   
    $model->name = $request->post('name');
    $model->email = $request->post('email');
    $model->phone = $request->post('phone');
    $model->time = $request->post('time');
    $model->save();
    return "OK";
  }

  public function fetch()
  {
    $result['contact'] = Contact::all();
    // echo "<pre>";
    // print_r($result['contact'][0]);
    // die;
    return view('contactedList',$result);
  }
}
