package net.bigpoint.cityrama.model.emergencyTV.vo
{
   public class TVShowVo
   {
      
      public static const START:String = "START";
      
      public static const SUCCESS:String = "SUCCESS";
      
      public static const FAIL:String = "FAIL";
      
      public static const NONE:String = "NONE";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_ || _loc2_)
      {
         START = "START";
         if(!_loc2_)
         {
            SUCCESS = "SUCCESS";
            if(!(_loc2_ && _loc1_))
            {
               FAIL = "FAIL";
               if(!(_loc2_ && _loc2_))
               {
                  addr006b:
                  NONE = "NONE";
               }
            }
            return;
         }
      }
      §§goto(addr006b);
      
      private var _emergencyGfxId:Number;
      
      private var _reporterFrameRate:int = 12;
      
      private var _professionalFrameRate:int = 12;
      
      private var _backGroundFrameRate:int = 12;
      
      private var _state:String;
      
      private var _mainDept:String;
      
      public function TVShowVo(param1:Number = 0, param2:String = "", param3:String = "NONE")
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(!(_loc5_ && Boolean(param1)))
         {
            super();
            if(_loc4_)
            {
               this._emergencyGfxId = param1;
               if(!(_loc5_ && Boolean(param1)))
               {
                  this._mainDept = param2;
                  if(_loc4_ || Boolean(param3))
                  {
                     this._state = param3;
                  }
               }
            }
         }
      }
      
      public function get reporterMC() : String
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §§push(this._state);
         loop0:
         while(true)
         {
            var _loc1_:* = §§pop();
            if(_loc2_ || _loc2_)
            {
               §§push(START);
               if(!_loc3_)
               {
                  §§push(_loc1_);
                  if(!(_loc3_ && _loc1_))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc3_)
                        {
                           addr00da:
                           §§push(0);
                           if(_loc2_ || _loc2_)
                           {
                           }
                        }
                        else
                        {
                           addr011c:
                           §§push(1);
                           if(_loc3_ && _loc1_)
                           {
                           }
                        }
                     }
                     else
                     {
                        §§push(SUCCESS);
                        if(_loc2_ || Boolean(this))
                        {
                           addr00fd:
                           §§push(_loc1_);
                           if(!(_loc3_ && _loc2_))
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc2_ || _loc3_)
                                 {
                                    §§goto(addr011c);
                                 }
                                 else
                                 {
                                    addr0142:
                                    §§push(2);
                                    if(_loc2_ || _loc2_)
                                    {
                                    }
                                 }
                                 addr0161:
                                 switch(§§pop())
                                 {
                                    case 0:
                                       §§push(this._mainDept);
                                       if(_loc2_ || Boolean(this))
                                       {
                                          §§push("_tv_reporter_start");
                                          if(!(_loc3_ && _loc1_))
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(_loc2_)
                                             {
                                                return §§pop();
                                             }
                                          }
                                          else
                                          {
                                             addr006a:
                                             §§push(§§pop() + §§pop());
                                             if(!_loc2_)
                                             {
                                                break loop0;
                                             }
                                          }
                                          return §§pop();
                                       }
                                       addr0059:
                                       §§push("_animation_success");
                                       if(_loc3_ && _loc1_)
                                       {
                                          break;
                                       }
                                       §§goto(addr006a);
                                    case 1:
                                       §§push(this._mainDept);
                                       if(_loc3_ && _loc1_)
                                       {
                                          addr0080:
                                          §§push("_animation_fail");
                                          break;
                                       }
                                       §§goto(addr0059);
                                       break;
                                    case 2:
                                       §§push(this._mainDept);
                                       if(_loc2_)
                                       {
                                          §§goto(addr0080);
                                          break;
                                       }
                                       continue;
                                    default:
                                       §§push("");
                                       break loop0;
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(_loc2_)
                                 {
                                    return §§pop();
                                 }
                                 break;
                              }
                              addr013e:
                              addr013d:
                              if(FAIL === _loc1_)
                              {
                                 §§goto(addr0142);
                              }
                              else
                              {
                                 §§push(3);
                              }
                              §§goto(addr0161);
                              §§goto(addr0142);
                           }
                           §§goto(addr013e);
                        }
                        §§goto(addr013d);
                     }
                     §§goto(addr0161);
                  }
                  §§goto(addr013e);
               }
               §§goto(addr00fd);
            }
            §§goto(addr00da);
         }
         return §§pop();
      }
      
      public function get backGroundMC() : String
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §§push(this._state);
         loop0:
         while(true)
         {
            var _loc1_:* = §§pop();
            if(_loc3_ || Boolean(this))
            {
               §§push(START);
               if(!_loc2_)
               {
                  §§push(_loc1_);
                  if(!_loc2_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc2_)
                        {
                           §§push(0);
                           if(_loc3_ || _loc1_)
                           {
                           }
                        }
                        else
                        {
                           addr012a:
                           §§push(2);
                           if(_loc3_ || _loc3_)
                           {
                           }
                        }
                        addr0149:
                        switch(§§pop())
                        {
                           case 0:
                              §§push(this._emergencyGfxId);
                              if(!(_loc2_ && _loc3_))
                              {
                                 §§push("_tv_bg_start");
                                 if(!_loc2_)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       return §§pop();
                                    }
                                    break loop0;
                                 }
                                 addr0164:
                                 §§push(§§pop() + §§pop());
                                 break loop0;
                              }
                              break;
                           case 1:
                              §§push(this._mainDept);
                              if(_loc3_ || _loc2_)
                              {
                                 §§push("_tv_bg_success");
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(_loc3_)
                                    {
                                       return §§pop();
                                    }
                                    break loop0;
                                 }
                              }
                              else
                              {
                                 addr0087:
                                 §§push("_tv_bg_fail");
                              }
                              §§push(§§pop() + §§pop());
                              if(!(_loc2_ && _loc1_))
                              {
                                 return §§pop();
                              }
                              break loop0;
                           case 2:
                              §§push(this._mainDept);
                              if(!(_loc2_ && _loc1_))
                              {
                                 §§goto(addr0087);
                                 break;
                              }
                              continue;
                           default:
                              §§push(this._emergencyGfxId);
                        }
                        §§goto(addr0164);
                        §§push("_tv_bg_start");
                     }
                     else
                     {
                        §§push(SUCCESS);
                        if(_loc3_)
                        {
                           §§push(_loc1_);
                           if(_loc3_ || _loc1_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc3_)
                                 {
                                    addr010b:
                                    §§push(1);
                                    if(_loc2_)
                                    {
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr012a);
                                 }
                              }
                              else
                              {
                                 addr0126:
                                 addr0125:
                                 if(FAIL === _loc1_)
                                 {
                                    §§goto(addr012a);
                                 }
                                 else
                                 {
                                    §§push(3);
                                 }
                              }
                              §§goto(addr0149);
                           }
                           §§goto(addr0126);
                        }
                        §§goto(addr0125);
                     }
                     §§goto(addr012a);
                  }
                  §§goto(addr0126);
               }
               §§goto(addr0125);
            }
            §§goto(addr010b);
         }
         return §§pop();
      }
      
      public function get backGroundlibName() : String
      {
         return this.backGroundMC;
      }
      
      public function get reporterLib() : String
      {
         return this.reporterMC;
      }
      
      public function get swfName() : String
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §§push(this._state);
         do
         {
            var _loc1_:* = §§pop();
            if(_loc3_ || _loc3_)
            {
               §§push(SUCCESS);
               if(_loc3_ || _loc3_)
               {
                  §§push(_loc1_);
                  if(_loc3_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc2_ && _loc3_))
                        {
                           addr007a:
                           §§push(0);
                           if(_loc2_ && _loc1_)
                           {
                           }
                        }
                        else
                        {
                           addr00a2:
                           §§push(1);
                           if(_loc3_)
                           {
                           }
                        }
                        addr00b9:
                        switch(§§pop())
                        {
                           case 0:
                           case 1:
                              break;
                           default:
                              return this._emergencyGfxId.toString();
                        }
                     }
                     else
                     {
                        addr009e:
                        addr009d:
                        if(FAIL === _loc1_)
                        {
                           §§goto(addr00a2);
                        }
                        else
                        {
                           §§push(2);
                        }
                        §§goto(addr00b9);
                     }
                     §§goto(addr00a2);
                  }
                  §§goto(addr009e);
               }
               §§goto(addr009d);
            }
            §§goto(addr007a);
            §§push(this._mainDept);
         }
         while(_loc2_ && _loc1_);
         
         return §§pop() + "_tv";
      }
      
      public function get reporterSwfName() : String
      {
         return this._mainDept + "_tv";
      }
      
      public function get reporterFrameRate() : int
      {
         return this._reporterFrameRate;
      }
      
      public function get backGroundFrameRate() : int
      {
         return this._backGroundFrameRate;
      }
      
      public function get state() : String
      {
         return this._state;
      }
      
      public function set reporterFrameRate(param1:int) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._reporterFrameRate = param1;
         }
      }
      
      public function set backGroundFrameRate(param1:int) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            this._backGroundFrameRate = param1;
         }
      }
      
      public function get mainDept() : String
      {
         return this._mainDept;
      }
   }
}

