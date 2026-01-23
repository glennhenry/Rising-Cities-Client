package net.bigpoint.cityrama.model.mastery
{
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   
   public class MasteryBonusTraitGroupVo
   {
      
      private static const HARVEST:String = "HARVEST";
      
      private static const TIMER:String = "TIMER";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!_loc2_)
      {
         HARVEST = "HARVEST";
         if(!(_loc2_ && _loc1_))
         {
            §§goto(addr0035);
         }
         §§goto(addr0043);
      }
      addr0035:
      
      private static const BALANCE:String = "BALANCE";
      
      if(!_loc2_)
      {
         addr0043:
         TIMER = "TIMER";
      }
      
      private var _bonusCollection:Vector.<MasteryBonusVo>;
      
      private var _tag:String;
      
      public function MasteryBonusTraitGroupVo()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            super();
            if(!_loc2_)
            {
               this._bonusCollection = new Vector.<MasteryBonusVo>();
            }
         }
      }
      
      public function get bonusCollection() : Vector.<MasteryBonusVo>
      {
         return this._bonusCollection;
      }
      
      public function set bonusCollection(param1:Vector.<MasteryBonusVo>) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            this._bonusCollection = param1;
            if(!_loc3_)
            {
               §§push(this.collectionContains(ServerTagConstants.IM_RESIDENTIAL_BASIC_EFFICIENCY));
               if(_loc2_ || _loc2_)
               {
                  §§push(§§pop());
                  if(!_loc3_)
                  {
                     var _temp_3:* = §§pop();
                     §§push(_temp_3);
                     §§push(_temp_3);
                     if(!(_loc3_ && _loc3_))
                     {
                        if(!§§pop())
                        {
                           if(_loc2_)
                           {
                              §§pop();
                              if(!_loc3_)
                              {
                                 §§push(this.collectionContains(ServerTagConstants.IM_RESIDENTIAL_NEED_EFFICIENCY));
                                 if(_loc2_ || _loc2_)
                                 {
                                    §§push(§§pop());
                                    if(!(_loc3_ && Boolean(this)))
                                    {
                                       §§goto(addr0094);
                                    }
                                 }
                                 §§goto(addr00e9);
                              }
                              §§goto(addr009d);
                           }
                           §§goto(addr00bc);
                        }
                        addr0094:
                        if(§§pop())
                        {
                           if(_loc2_)
                           {
                              addr009d:
                              this._tag = HARVEST;
                              if(_loc3_)
                              {
                              }
                           }
                        }
                        else
                        {
                           §§push(this.collectionContains(ServerTagConstants.IM_ENERGY_CONSUMPTION_EFFICIENCY));
                           if(_loc2_)
                           {
                              addr00bc:
                              §§push(§§pop());
                              if(_loc2_ || _loc3_)
                              {
                                 addr00ca:
                                 var _temp_8:* = §§pop();
                                 addr00cb:
                                 §§push(_temp_8);
                                 if(_temp_8)
                                 {
                                    if(!_loc3_)
                                    {
                                       §§pop();
                                       if(_loc2_)
                                       {
                                          §§push(this.collectionContains(ServerTagConstants.IM_MOOD_CONSUMPTION_EFFICIENCY));
                                          if(_loc2_)
                                          {
                                             addr00e9:
                                             §§push(§§pop());
                                             if(!(_loc3_ && Boolean(param1)))
                                             {
                                                §§goto(addr0103);
                                             }
                                             §§goto(addr0126);
                                          }
                                          §§goto(addr0103);
                                       }
                                       §§goto(addr010c);
                                    }
                                 }
                                 addr0103:
                                 if(§§pop())
                                 {
                                    if(!_loc3_)
                                    {
                                       addr010c:
                                       this._tag = BALANCE;
                                       if(_loc3_)
                                       {
                                          addr012f:
                                          this._tag = TIMER;
                                       }
                                    }
                                 }
                                 else
                                 {
                                    addr0126:
                                    if(this.collectionContains(ServerTagConstants.IM_RESIDENTIAL_TIMER_EFFICIENCY))
                                    {
                                       if(!_loc3_)
                                       {
                                          §§goto(addr012f);
                                       }
                                    }
                                 }
                                 §§goto(addr0136);
                              }
                           }
                           §§goto(addr00e9);
                        }
                        §§goto(addr0136);
                     }
                     §§goto(addr00cb);
                  }
                  §§goto(addr00ca);
               }
               §§goto(addr0103);
            }
            §§goto(addr012f);
         }
         addr0136:
      }
      
      public function get value() : Number
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            if(this._bonusCollection.length > 0)
            {
               if(!(_loc1_ && _loc2_))
               {
                  return this._bonusCollection[0].value;
               }
            }
         }
         return 0;
      }
      
      public function get locaId() : String
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:* = this._tag;
         if(_loc2_ || _loc2_)
         {
            §§push(HARVEST);
            if(!_loc3_)
            {
               §§push(_loc1_);
               if(_loc2_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc2_ || Boolean(this))
                     {
                        §§push(0);
                        if(_loc3_)
                        {
                        }
                     }
                     else
                     {
                        addr00d1:
                        §§push(1);
                        if(_loc3_)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(BALANCE);
                     if(_loc2_)
                     {
                        §§push(_loc1_);
                        if(_loc2_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!_loc3_)
                              {
                                 §§goto(addr00d1);
                              }
                              else
                              {
                                 addr00e4:
                                 §§push(2);
                                 if(_loc2_ || Boolean(_loc1_))
                                 {
                                 }
                              }
                              §§goto(addr0103);
                           }
                           else
                           {
                              §§goto(addr00e0);
                           }
                        }
                        addr00e0:
                        §§goto(addr00df);
                     }
                     addr00df:
                     if(TIMER === _loc1_)
                     {
                        §§goto(addr00e4);
                     }
                     else
                     {
                        §§push(3);
                     }
                     §§goto(addr0103);
                  }
                  addr0103:
                  switch(§§pop())
                  {
                     case 0:
                        §§push("rent");
                        if(_loc2_)
                        {
                           return §§pop();
                        }
                        §§goto(addr005a);
                        break;
                     case 1:
                        §§push("balance");
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           return §§pop();
                        }
                        break;
                     case 2:
                        §§push("cycle");
                        if(_loc2_ || _loc2_)
                        {
                           addr005a:
                           return §§pop();
                        }
                        break;
                     default:
                        return "";
                  }
                  return §§pop();
               }
               §§goto(addr00e0);
            }
            §§goto(addr00df);
         }
         §§goto(addr00d1);
      }
      
      public function get gfxId() : String
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:* = this._tag;
         if(_loc2_)
         {
            §§push(HARVEST);
            if(!(_loc3_ && Boolean(this)))
            {
               §§push(_loc1_);
               if(!(_loc3_ && _loc3_))
               {
                  if(§§pop() !== §§pop())
                  {
                     §§push(BALANCE);
                     if(!(_loc3_ && Boolean(this)))
                     {
                        addr00bd:
                        §§push(_loc1_);
                        if(!_loc3_)
                        {
                           addr00c3:
                           if(§§pop() === §§pop())
                           {
                              if(!_loc3_)
                              {
                                 §§push(1);
                                 if(_loc3_ && _loc3_)
                                 {
                                 }
                              }
                              else
                              {
                                 §§goto(addr00f2);
                              }
                              §§goto(addr0109);
                           }
                           else
                           {
                              §§goto(addr00ee);
                           }
                        }
                        addr00ee:
                        §§goto(addr00ed);
                     }
                     addr00ed:
                     if(TIMER === _loc1_)
                     {
                        §§goto(addr00f2);
                     }
                     else
                     {
                        §§push(3);
                     }
                     addr0109:
                     switch(§§pop())
                     {
                        case 0:
                           §§push("trait_resources");
                           if(!_loc3_)
                           {
                              return §§pop();
                           }
                           break;
                        case 1:
                           §§push("trait_energy_mood");
                           if(_loc2_)
                           {
                              return §§pop();
                           }
                           break;
                        case 2:
                           §§push("trait_time");
                           if(_loc2_ || _loc2_)
                           {
                              return §§pop();
                           }
                           break;
                        default:
                           return "";
                     }
                     return §§pop();
                  }
                  if(!(_loc3_ && Boolean(this)))
                  {
                     §§push(0);
                     if(_loc3_)
                     {
                     }
                  }
                  else
                  {
                     addr00f2:
                     §§push(2);
                     if(_loc2_)
                     {
                     }
                  }
                  §§goto(addr0109);
                  §§goto(addr00f2);
               }
               §§goto(addr00c3);
            }
            §§goto(addr00bd);
         }
         §§goto(addr00f2);
      }
      
      private function collectionContains(param1:String) : Boolean
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:MasteryBonusVo = null;
         var _loc3_:int = 0;
         var _loc4_:* = this._bonusCollection;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(_loc5_ && Boolean(_loc3_))
               {
                  break;
               }
               if(_loc2_.tag == param1)
               {
                  if(!_loc5_)
                  {
                     break;
                  }
               }
            }
            return false;
         }
         return true;
      }
   }
}

