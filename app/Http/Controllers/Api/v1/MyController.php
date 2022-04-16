<?php

namespace App\Http\Controllers\Api\v1;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Auth;
use \Validator;
use App\Models\Transaction;
use App\Models\Balance;
use App\Models\Document;

class MyController extends Controller
{
    
    public function getRequest()
    {
        //https://dog-facts-api.herokuapp.com/api/v1/resources/dogs?number=1
        //https://catfact.ninja/fact

        $client = new \GuzzleHttp\Client();
        $request = $client->get('https://api.chucknorris.io/jokes/random');
        // $response = $request->getBody()->getContents();
        $response = $request->getBody();
        
        return response($response);
    }

    public function getRequestParam(Request $request)
    {
        //https://dog-facts-api.herokuapp.com/api/v1/resources/dogs?number=1
        //https://catfact.ninja/fact

        $client = new \GuzzleHttp\Client();
        $request = $client->get($request->link);
        // $response = $request->getBody()->getContents();
        $response = $request->getBody();
        
        return response($response);
    }

    public function store(Request $request)
    {
        $validator = Validator::make($request->all(),[
            'trx_id' => 'required|string|max:255|unique:transaction',
            'user_id' => 'required|numeric',
            'amount' => 'required|numeric|between:0.00000000,99.99',
        ]);

        if($validator->fails()){
            return response()->json($validator->errors());       
        }

        if($request->amount == 0.00000001){
            return response()
                ->json(['message' => 'Amount declined']);
        }

        $cek_balance = Balance::where('user_id', $request->user_id)->first();

        if($cek_balance->amount_available < $request->amount){
            return response()
                ->json(['message' => 'Amount insufficied']);
        }else{
            $trans = Transaction::create([
                'trx_id' => $request->trx_id,
                'user_id' => $request->user_id,
                'amount' => $request->amount
    
             ]);

             $remain_balance = $cek_balance->amount_available - $request->amount;

             $update_balance = Balance::where('id',$cek_balance->id)->first();
             $update_balance->amount_available = $remain_balance;

             $update_balance->save();

             $trim_amount = \Illuminate\Support\Str::limit((string)$request->amount, 7);

            $trans->amount = $trim_amount;
            
            return response()->json(['Transaction Added successfully.', $trans,'trim_amount' => $trim_amount ]);

            sleep(30);

            return response()->json(['Transaction Delayed.']);
        }

        
    }

    public function store_docs(Request $request)
    {
 
       $validator = Validator::make($request->all(), 
              [ 
              'user_id' => 'required',
              'file' => 'required|mimes:csv|max:900048',
             ]);   
 
    if ($validator->fails()) {          
            return response()->json(['error'=>$validator->errors()], 401);                        
         }  
 
  
        if ($files = $request->file('file')) {
             
            //store file into document folder
            $file = $request->file->store(public_path('uploads'));
 
            //store your file into database
            $document = new Document();
            $document->file_name = $file;
            $document->user_id = $request->user_id;
            $document->save();
              
            return response()->json([
                "success" => true,
                "message" => "File successfully uploaded",
                "file" => $file
            ]);
  
        }
 
  
    }

}
