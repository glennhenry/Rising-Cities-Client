package com.greensock.loading
{
   import com.greensock.loading.core.LoaderItem;
   import flash.events.Event;
   import flash.events.ProgressEvent;
   import flash.net.URLLoader;
   
   public class DataLoader extends LoaderItem
   {
      
      private static var _classActivated:Boolean;
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_ || _loc1_)
      {
         _classActivated = _activateClass("DataLoader",DataLoader,"txt,js");
      }
      
      protected var _loader:URLLoader;
      
      public function DataLoader(param1:*, param2:Object = null)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            super(param1,param2);
            if(!(_loc4_ && param1))
            {
               _type = "DataLoader";
               if(_loc3_ || _loc3_)
               {
                  addr0040:
                  _loader = new URLLoader(null);
                  if(_loc3_ || param1)
                  {
                     addr005b:
                     if("format" in this.vars)
                     {
                        if(!(_loc4_ && param1))
                        {
                           _loader.dataFormat = String(this.vars.format);
                           addr0075:
                           if(_loc3_)
                           {
                              addr0099:
                              _loader.addEventListener(ProgressEvent.PROGRESS,_progressHandler,false,0,true);
                              if(_loc3_ || Boolean(this))
                              {
                                 _loader.addEventListener(Event.COMPLETE,_receiveDataHandler,false,0,true);
                                 if(!(_loc4_ && Boolean(param2)))
                                 {
                                    _loader.addEventListener("ioError",_failHandler,false,0,true);
                                    if(_loc3_ || Boolean(this))
                                    {
                                       addr0103:
                                       _loader.addEventListener("securityError",_failHandler,false,0,true);
                                       if(_loc3_)
                                       {
                                          addr0118:
                                          _loader.addEventListener("httpStatus",_httpStatusHandler,false,0,true);
                                       }
                                    }
                                    return;
                                 }
                                 §§goto(addr0118);
                              }
                              §§goto(addr0103);
                           }
                           §§goto(addr0118);
                        }
                        §§goto(addr0103);
                     }
                     §§goto(addr0099);
                  }
               }
               §§goto(addr0075);
            }
            §§goto(addr0040);
         }
         §§goto(addr005b);
      }
      
      override protected function _dump(param1:int = 0, param2:int = 0, param3:Boolean = false) : void
      {
         var newStatus:int;
         var scrubLevel:int;
         var suppressEvents:Boolean;
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         §§push(§§newactivation());
         if(_loc7_)
         {
            §§push(param1);
            if(_loc7_)
            {
               §§pop().§§slot[1] = §§pop();
               if(!_loc6_)
               {
                  §§push(§§newactivation());
                  if(_loc7_)
                  {
                     addr003b:
                     §§pop().§§slot[2] = param2;
                     if(_loc7_ || Boolean(this))
                     {
                        addr005b:
                        suppressEvents = param3;
                        if(!(_loc6_ && Boolean(this)))
                        {
                           addr006c:
                           if(_status == LoaderStatus.LOADING)
                           {
                              try
                              {
                                 addr0079:
                                 _loader.close();
                                 if(!(_loc6_ && Boolean(this)))
                                 {
                                    addr00b2:
                                    super._dump(scrubLevel,newStatus,suppressEvents);
                                 }
                              }
                              catch(error:Error)
                              {
                              }
                              return;
                           }
                           §§goto(addr00b2);
                        }
                     }
                     §§goto(addr0079);
                  }
                  §§goto(addr005b);
               }
               §§goto(addr006c);
            }
            §§goto(addr003b);
         }
         §§goto(addr005b);
      }
      
      override protected function _load() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            _prepRequest();
            if(_loc2_)
            {
               addr0022:
               _loader.load(_request);
            }
            return;
         }
         §§goto(addr0022);
      }
      
      protected function _receiveDataHandler(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            _content = _loader.data;
            if(!(_loc3_ && Boolean(param1)))
            {
               addr0044:
               super._completeHandler(param1);
            }
            return;
         }
         §§goto(addr0044);
      }
   }
}

