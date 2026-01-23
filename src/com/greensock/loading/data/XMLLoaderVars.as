package com.greensock.loading.data
{
   import flash.display.DisplayObject;
   
   public class XMLLoaderVars
   {
      
      public static const version:Number = 1.22;
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_ || XMLLoaderVars)
      {
         version = 1.22;
      }
      
      protected var _vars:Object;
      
      public function XMLLoaderVars(param1:Object = null)
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:String = null;
         if(!_loc5_)
         {
            super();
            if(_loc6_ || Boolean(param1))
            {
               _vars = {};
               if(!_loc5_)
               {
                  §§goto(addr004a);
               }
               §§goto(addr0050);
            }
            addr004a:
            if(param1 != null)
            {
               addr0050:
               for(_loc2_ in param1)
               {
                  if(_loc6_ || Boolean(this))
                  {
                     _vars[_loc2_] = param1[_loc2_];
                  }
               }
            }
            return;
         }
         §§goto(addr0050);
      }
      
      public function onCancel(param1:Function) : XMLLoaderVars
      {
         return _set("onCancel",param1);
      }
      
      public function noCache(param1:Boolean) : XMLLoaderVars
      {
         return _set("noCache",param1);
      }
      
      public function onIOError(param1:Function) : XMLLoaderVars
      {
         return _set("onIOError",param1);
      }
      
      public function get vars() : Object
      {
         return _vars;
      }
      
      public function recursivePrependURLs(param1:String) : XMLLoaderVars
      {
         return _set("recursivePrependURLs",param1);
      }
      
      public function onOpen(param1:Function) : XMLLoaderVars
      {
         return _set("onOpen",param1);
      }
      
      public function onChildProgress(param1:Function) : XMLLoaderVars
      {
         return _set("onChildProgress",param1);
      }
      
      public function requireWithRoot(param1:DisplayObject) : XMLLoaderVars
      {
         return _set("requireWithRoot",param1);
      }
      
      public function estimatedBytes(param1:uint) : XMLLoaderVars
      {
         return _set("estimatedBytes",param1);
      }
      
      public function maxConnections(param1:uint) : XMLLoaderVars
      {
         return _set("maxConnections",param1);
      }
      
      public function name(param1:String) : XMLLoaderVars
      {
         return _set("name",param1);
      }
      
      public function alternateURL(param1:String) : XMLLoaderVars
      {
         return _set("alternateURL",param1);
      }
      
      public function onChildComplete(param1:Function) : XMLLoaderVars
      {
         return _set("onChildComplete",param1);
      }
      
      public function onChildCancel(param1:Function) : XMLLoaderVars
      {
         return _set("onChildCancel",param1);
      }
      
      public function prependURLs(param1:String) : XMLLoaderVars
      {
         return _set("prependURLs",param1);
      }
      
      public function skipFailed(param1:Boolean) : XMLLoaderVars
      {
         return _set("skipFailed",param1);
      }
      
      public function allowMalformedURL(param1:Boolean) : XMLLoaderVars
      {
         return _set("allowMalformedURL",param1);
      }
      
      public function onInit(param1:Function) : XMLLoaderVars
      {
         return _set("onInit",param1);
      }
      
      public function get isGSVars() : Boolean
      {
         return true;
      }
      
      protected function _set(param1:String, param2:*) : XMLLoaderVars
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            if(param2 == null)
            {
               if(!(_loc3_ && _loc3_))
               {
                  delete _vars[param1];
                  if(_loc3_)
                  {
                  }
               }
            }
            else
            {
               _vars[param1] = param2;
            }
         }
         return this;
      }
      
      public function onFail(param1:Function) : XMLLoaderVars
      {
         return _set("onFail",param1);
      }
      
      public function onChildOpen(param1:Function) : XMLLoaderVars
      {
         return _set("onChildOpen",param1);
      }
      
      public function onError(param1:Function) : XMLLoaderVars
      {
         return _set("onError",param1);
      }
      
      public function prop(param1:String, param2:*) : XMLLoaderVars
      {
         return _set(param1,param2);
      }
      
      public function onProgress(param1:Function) : XMLLoaderVars
      {
         return _set("onProgress",param1);
      }
      
      public function autoDispose(param1:Boolean) : XMLLoaderVars
      {
         return _set("autoDispose",param1);
      }
      
      public function onRawLoad(param1:Function) : XMLLoaderVars
      {
         return _set("onRawLoad",param1);
      }
      
      public function onComplete(param1:Function) : XMLLoaderVars
      {
         return _set("onComplete",param1);
      }
      
      public function onHTTPStatus(param1:Function) : XMLLoaderVars
      {
         return _set("onHTTPStatus",param1);
      }
      
      public function onChildFail(param1:Function) : XMLLoaderVars
      {
         return _set("onChildFail",param1);
      }
      
      public function integrateProgress(param1:Boolean) : XMLLoaderVars
      {
         return _set("integrateProgress",param1);
      }
   }
}

