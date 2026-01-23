package com.greensock.events
{
   import flash.events.Event;
   
   public class LoaderEvent extends Event
   {
      
      public static const CHILD_FAIL:String = "childFail";
      
      public static const HTTP_STATUS:String = "httpStatus";
      
      public static const OPEN:String = "open";
      
      public static const IO_ERROR:String = "ioError";
      
      public static const CHILD_PROGRESS:String = "childProgress";
      
      public static const INIT:String = "init";
      
      public static const CHILD_CANCEL:String = "childCancel";
      
      public static const FAIL:String = "fail";
      
      public static const CHILD_COMPLETE:String = "childComplete";
      
      public static const ERROR:String = "error";
      
      public static const SCRIPT_ACCESS_DENIED:String = "scriptAccessDenied";
      
      public static const PROGRESS:String = "progress";
      
      public static const SECURITY_ERROR:String = "securityError";
      
      public static const CHILD_OPEN:String = "childOpen";
      
      public static const COMPLETE:String = "complete";
      
      public static const CANCEL:String = "cancel";
      
      public static const UNCAUGHT_ERROR:String = "uncaughtError";
      
      public static const UNLOAD:String = "unload";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_ || LoaderEvent)
      {
         CHILD_OPEN = "childOpen";
         if(_loc1_ || _loc2_)
         {
            CHILD_PROGRESS = "childProgress";
            if(_loc1_ || _loc1_)
            {
               addr004b:
               CHILD_CANCEL = "childCancel";
               if(!_loc2_)
               {
                  CHILD_COMPLETE = "childComplete";
                  if(_loc1_)
                  {
                     CHILD_FAIL = "childFail";
                     if(!(_loc2_ && _loc2_))
                     {
                        addr007d:
                        OPEN = "open";
                        if(!_loc2_)
                        {
                           PROGRESS = "progress";
                           if(_loc1_)
                           {
                              CANCEL = "cancel";
                              addr0099:
                              if(_loc1_)
                              {
                                 FAIL = "fail";
                                 if(!_loc2_)
                                 {
                                    addr00bf:
                                    INIT = "init";
                                    if(_loc1_ || LoaderEvent)
                                    {
                                       COMPLETE = "complete";
                                       if(_loc1_)
                                       {
                                          HTTP_STATUS = "httpStatus";
                                          if(!(_loc2_ && _loc1_))
                                          {
                                             SCRIPT_ACCESS_DENIED = "scriptAccessDenied";
                                             if(!_loc2_)
                                             {
                                                addr0107:
                                                ERROR = "error";
                                                if(_loc1_)
                                                {
                                                   addr0115:
                                                   IO_ERROR = "ioError";
                                                   if(!(_loc2_ && _loc2_))
                                                   {
                                                      addr0135:
                                                      SECURITY_ERROR = "securityError";
                                                      if(_loc1_ || _loc1_)
                                                      {
                                                         UNCAUGHT_ERROR = "uncaughtError";
                                                         if(!(_loc2_ && LoaderEvent))
                                                         {
                                                            addr0163:
                                                            UNLOAD = "unload";
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr016c);
                                                }
                                                §§goto(addr0163);
                                             }
                                             addr016c:
                                             return;
                                          }
                                          §§goto(addr0107);
                                       }
                                       §§goto(addr0115);
                                    }
                                    §§goto(addr0163);
                                 }
                                 §§goto(addr0135);
                              }
                           }
                           §§goto(addr00bf);
                        }
                        §§goto(addr0115);
                     }
                     §§goto(addr0107);
                  }
                  §§goto(addr0099);
               }
               §§goto(addr0107);
            }
            §§goto(addr007d);
         }
         §§goto(addr0107);
      }
      §§goto(addr004b);
      
      protected var _target:Object;
      
      public var data:*;
      
      protected var _ready:Boolean;
      
      public var text:String;
      
      public function LoaderEvent(param1:String, param2:Object, param3:String = "", param4:* = null)
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         if(!_loc6_)
         {
            super(param1,false,false);
            if(!(_loc6_ && Boolean(this)))
            {
               _target = param2;
               if(!_loc6_)
               {
                  addr0048:
                  this.text = param3;
                  if(!_loc6_)
                  {
                     addr0052:
                     this.data = param4;
                  }
                  §§goto(addr0057);
               }
               §§goto(addr0052);
            }
            addr0057:
            return;
         }
         §§goto(addr0048);
      }
      
      override public function get target() : Object
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            if(_ready)
            {
               if(_loc1_ || _loc2_)
               {
                  return _target;
               }
            }
            else
            {
               addr003c:
               _ready = true;
            }
            return null;
         }
         §§goto(addr003c);
      }
      
      override public function clone() : Event
      {
         return new LoaderEvent(this.type,_target,this.text,this.data);
      }
   }
}

