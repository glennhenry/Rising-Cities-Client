package net.bigpoint.cityrama.model.field.fieldInfoLayer.vo
{
   import net.bigpoint.cityrama.constants.ServerImprovementConstants;
   import net.bigpoint.cityrama.model.improvement.vo.ImprovementVo;
   
   public class ImprovementIconComponentVo
   {
      
      private const STATE_EMPTY:String = "empty";
      
      private const STATE_LOCKED:String = "locked";
      
      private const STATE_COMMON:String = "common";
      
      private const STATE_RARE:String = "rare";
      
      private const STATE_EPIC:String = "epic";
      
      private const STATE_LEGENDARY:String = "legendary";
      
      private const STATE_EXPIRED:String = "Expired";
      
      private var _listOfImprovements:Vector.<ImprovementVo>;
      
      private var _numFreeSlots:int;
      
      private var _enabled:Boolean;
      
      private var _currentTimeStamp:Number;
      
      public function ImprovementIconComponentVo()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            super();
            if(_loc1_ || _loc2_)
            {
               this._enabled = false;
            }
         }
      }
      
      public function get getIcon1() : String
      {
         return this.getIconSlotState(1);
      }
      
      public function get getIcon2() : String
      {
         return this.getIconSlotState(2);
      }
      
      public function get getIcon3() : String
      {
         return this.getIconSlotState(3);
      }
      
      public function set listOfImprovements(param1:Vector.<ImprovementVo>) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            this._listOfImprovements = param1;
         }
      }
      
      public function get enabled() : Boolean
      {
         return this._enabled;
      }
      
      public function set enabled(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._enabled = param1;
         }
      }
      
      private function getIconSlotState(param1:int) : String
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = 0;
         var _loc2_:* = -1;
         var _loc3_:int = 0;
         while(true)
         {
            §§push(_loc3_);
            if(!_loc7_)
            {
               break;
            }
            if(§§pop() >= this._listOfImprovements.length)
            {
               if(_loc7_)
               {
                  addr0089:
                  §§push(_loc2_);
                  if(_loc7_ || Boolean(_loc2_))
                  {
                     break;
                  }
                  addr01da:
                  _loc6_ = §§pop();
                  if(!_loc8_)
                  {
                     addr01e2:
                     addr01e3:
                     addr01e4:
                     if(param1 - 1 < _loc6_)
                     {
                        if(_loc7_ || Boolean(_loc2_))
                        {
                           addr01f8:
                           §§push(this.STATE_EMPTY);
                           if(!_loc8_)
                           {
                              return §§pop();
                           }
                        }
                        else
                        {
                           addr0204:
                           §§push(this.STATE_LOCKED);
                        }
                        §§goto(addr0209);
                     }
                     §§goto(addr0204);
                  }
                  §§goto(addr01f8);
               }
               §§goto(addr01e2);
            }
            else
            {
               if(this._listOfImprovements[_loc3_].currentSlotId == param1)
               {
                  if(!(_loc8_ && Boolean(_loc3_)))
                  {
                     §§push(_loc3_);
                     if(_loc7_ || Boolean(this))
                     {
                        §§push(§§pop());
                        if(!_loc8_)
                        {
                           _loc2_ = §§pop();
                           if(_loc7_)
                           {
                              §§goto(addr0089);
                           }
                           §§goto(addr01e2);
                        }
                        §§goto(addr01da);
                     }
                     §§goto(addr01e3);
                  }
                  addr0134:
                  §§push(this.STATE_EXPIRED);
                  if(!(_loc8_ && Boolean(_loc2_)))
                  {
                     §§push(§§pop());
                     if(!_loc8_)
                     {
                        addr0154:
                        §§push(§§pop());
                        if(!_loc8_)
                        {
                           _loc4_ = §§pop();
                           §§push(this.getStateIdentifier(this._listOfImprovements[_loc2_].config.quality));
                           if(!_loc8_)
                           {
                              §§push(§§pop());
                              if(_loc7_ || Boolean(param1))
                              {
                                 §§goto(addr0185);
                              }
                              §§goto(addr01a4);
                           }
                           §§goto(addr0209);
                        }
                        §§goto(addr01a4);
                     }
                     addr0185:
                     var _temp_7:* = §§pop();
                     §§push(_temp_7);
                     §§push(_temp_7);
                     if(!(_loc8_ && Boolean(_loc3_)))
                     {
                        _loc5_ = §§pop();
                        if(!(_loc8_ && Boolean(this)))
                        {
                           addr01a4:
                           §§push(_loc4_);
                        }
                        else
                        {
                           §§goto(addr0209);
                        }
                     }
                     return §§pop() + §§pop();
                  }
               }
               else
               {
                  _loc3_++;
                  if(!_loc8_)
                  {
                     continue;
                  }
                  addr00ac:
                  §§push(this._listOfImprovements[_loc2_].config.lifetime == -1);
                  if(!(_loc8_ && Boolean(_loc3_)))
                  {
                     §§push(!§§pop());
                     if(_loc7_ || Boolean(_loc3_))
                     {
                        addr00d9:
                        var _temp_12:* = §§pop();
                        §§push(_temp_12);
                        if(_temp_12)
                        {
                           if(_loc7_ || Boolean(_loc2_))
                           {
                              addr00fc:
                              §§pop();
                              if(_loc7_ || Boolean(_loc3_))
                              {
                                 §§push(this._currentTimeStamp);
                                 if(!(_loc8_ && Boolean(this)))
                                 {
                                    addr012a:
                                    if(§§pop() > this._listOfImprovements[_loc2_].expirationTime)
                                    {
                                       if(!_loc8_)
                                       {
                                          §§goto(addr0134);
                                       }
                                       else
                                       {
                                          §§goto(addr0204);
                                       }
                                    }
                                    else
                                    {
                                       §§push("");
                                    }
                                    §§goto(addr0154);
                                 }
                                 else
                                 {
                                    §§goto(addr01e4);
                                 }
                              }
                              else
                              {
                                 §§goto(addr01e2);
                              }
                              §§goto(addr01e4);
                           }
                        }
                        §§goto(addr012a);
                     }
                     §§goto(addr00fc);
                  }
                  §§goto(addr00d9);
               }
               §§goto(addr0154);
            }
            return §§pop();
         }
         if(§§pop() != -1)
         {
            if(_loc7_ || Boolean(_loc3_))
            {
               §§goto(addr00ac);
            }
            §§goto(addr0134);
         }
         else
         {
            §§push(this._listOfImprovements.length + this._numFreeSlots);
            if(_loc7_ || Boolean(this))
            {
               §§goto(addr01da);
            }
         }
         §§goto(addr01e3);
      }
      
      private function getStateIdentifier(param1:String) : String
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         §§push(param1);
         loop0:
         while(true)
         {
            var _loc2_:* = §§pop();
            if(!(_loc4_ && _loc3_))
            {
               §§push(ServerImprovementConstants.QUALITY_COMMON);
               if(!_loc4_)
               {
                  §§push(_loc2_);
                  if(!_loc4_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc3_ || _loc2_)
                        {
                           §§push(0);
                           if(_loc4_)
                           {
                           }
                        }
                        else
                        {
                           addr0105:
                           §§push(1);
                           if(_loc4_)
                           {
                           }
                        }
                     }
                     else
                     {
                        §§push(ServerImprovementConstants.QUALITY_RARE);
                        if(_loc3_ || Boolean(this))
                        {
                           §§push(_loc2_);
                           if(_loc3_)
                           {
                              addr00f4:
                              if(§§pop() === §§pop())
                              {
                                 if(_loc3_ || Boolean(param1))
                                 {
                                    §§goto(addr0105);
                                 }
                                 else
                                 {
                                    addr0157:
                                    §§push(3);
                                    if(_loc3_ || _loc2_)
                                    {
                                    }
                                 }
                                 §§goto(addr0176);
                              }
                              §§push(ServerImprovementConstants.QUALITY_EPIC);
                              if(_loc3_)
                              {
                                 addr011c:
                                 §§push(_loc2_);
                                 if(_loc3_)
                                 {
                                    addr0122:
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc3_ || _loc2_)
                                       {
                                          §§push(2);
                                          if(_loc4_)
                                          {
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr0157);
                                       }
                                       §§goto(addr0176);
                                    }
                                    else
                                    {
                                       §§goto(addr0153);
                                    }
                                 }
                                 addr0153:
                                 §§goto(addr0152);
                              }
                              addr0152:
                              if(ServerImprovementConstants.QUALITY_LEGENDARY === _loc2_)
                              {
                                 §§goto(addr0157);
                              }
                              else
                              {
                                 §§push(4);
                              }
                              addr0176:
                              switch(§§pop())
                              {
                                 case 0:
                                    §§push(this.STATE_COMMON);
                                    if(!_loc4_)
                                    {
                                       return §§pop();
                                    }
                                    break;
                                 case 1:
                                    §§push(this.STATE_RARE);
                                    if(!(_loc4_ && Boolean(param1)))
                                    {
                                       return §§pop();
                                    }
                                    break loop0;
                                 case 2:
                                    §§push(this.STATE_EPIC);
                                    if(!(_loc4_ && Boolean(param1)))
                                    {
                                       break loop0;
                                    }
                                    continue;
                                 case 3:
                                    §§push(this.STATE_LEGENDARY);
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       break;
                                    }
                                    continue;
                                 default:
                                    return "";
                              }
                              return §§pop();
                              §§goto(addr0157);
                           }
                           §§goto(addr0122);
                        }
                        §§goto(addr011c);
                     }
                     §§goto(addr0176);
                  }
                  §§goto(addr00f4);
               }
               §§goto(addr011c);
            }
            §§goto(addr0157);
         }
         return §§pop();
      }
      
      public function set numFreeSlots(param1:int) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._numFreeSlots = param1;
         }
      }
      
      public function set currentTimeStamp(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._currentTimeStamp = param1;
         }
      }
   }
}

