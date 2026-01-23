package net.bigpoint.cityrama.model.residentSelection.vo
{
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import net.bigpoint.util.LocaUtils;
   
   public class ResidentDetailVo extends ResidentVo
   {
      
      private var _movePossible:Boolean;
      
      private var _locked:Boolean;
      
      public function ResidentDetailVo(param1:ResidentVo)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            super(param1.type,param1.buildingLevel,param1.minUserLevel);
         }
      }
      
      public function set movePossible(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            this._movePossible = param1;
         }
      }
      
      public function set locked(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && param1))
         {
            this._locked = param1;
         }
      }
      
      public function get locked() : Boolean
      {
         return this._locked;
      }
      
      public function get movePossible() : Boolean
      {
         return this._movePossible;
      }
      
      public function get buttonText() : String
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §§push(type == ServerResConst.RESOURCE_ACADEMICS);
            if(!(_loc1_ && Boolean(this)))
            {
               var _temp_3:* = §§pop();
               §§push(_temp_3);
               §§push(_temp_3);
               if(_loc2_ || Boolean(this))
               {
                  if(!§§pop())
                  {
                     if(!_loc1_)
                     {
                        §§pop();
                        if(!(_loc1_ && Boolean(this)))
                        {
                           §§push(type == ServerResConst.RESOURCE_RICHMEN);
                           if(_loc2_ || _loc2_)
                           {
                              addr006f:
                              var _temp_7:* = §§pop();
                              addr0070:
                              §§push(_temp_7);
                              if(!_temp_7)
                              {
                                 if(!_loc1_)
                                 {
                                    §§pop();
                                    if(!_loc1_)
                                    {
                                       addr0091:
                                       addr0089:
                                       if(type == ServerResConst.RESOURCE_WORKERS)
                                       {
                                          if(_loc2_)
                                          {
                                             addr009a:
                                             §§push(LocaUtils.getString("rcl.booklayer.residentSelection","rcl.booklayer.residentSelection.button.active"));
                                             if(_loc2_)
                                             {
                                                return §§pop();
                                             }
                                          }
                                          else
                                          {
                                             addr00ac:
                                             return LocaUtils.getString("rcl.booklayer.residentSelection","rcl.booklayer.residentSelection.button.inactive");
                                          }
                                          return §§pop();
                                       }
                                       §§goto(addr00ac);
                                    }
                                    §§goto(addr009a);
                                 }
                              }
                           }
                           §§goto(addr0091);
                        }
                        §§goto(addr0089);
                     }
                  }
                  §§goto(addr006f);
               }
               §§goto(addr0070);
            }
            §§goto(addr0091);
         }
         §§goto(addr0089);
      }
      
      public function get residentName() : String
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:String = type;
         if(!_loc2_)
         {
            §§push(ServerResConst.RESOURCE_RICHMEN);
            if(_loc3_ || _loc2_)
            {
               if(§§pop() !== _loc1_)
               {
                  §§push(ServerResConst.RESOURCE_ACADEMICS);
                  if(_loc3_)
                  {
                     addr00cd:
                     if(§§pop() === _loc1_)
                     {
                        if(_loc3_ || _loc2_)
                        {
                           addr00df:
                           §§push(1);
                           if(_loc2_ && _loc2_)
                           {
                           }
                        }
                        else
                        {
                           §§goto(addr0108);
                        }
                        §§goto(addr011f);
                     }
                     else
                     {
                        §§goto(addr0103);
                     }
                  }
                  addr0103:
                  if(ServerResConst.RESOURCE_WORKERS === _loc1_)
                  {
                     §§goto(addr0108);
                  }
                  else
                  {
                     §§push(3);
                  }
                  addr011f:
                  switch(§§pop())
                  {
                     case 0:
                        §§push(LocaUtils.getString("rcl.booklayer.residentSelection","rcl.booklayer.residentSelection.name.richMan"));
                        if(_loc3_ || _loc3_)
                        {
                           return §§pop();
                        }
                        break;
                     case 1:
                        §§push(LocaUtils.getString("rcl.booklayer.residentSelection","rcl.booklayer.residentSelection.name.academics"));
                        if(!(_loc2_ && _loc3_))
                        {
                           break;
                        }
                        §§goto(addr0075);
                        break;
                     case 2:
                        addr0075:
                        return §§pop();
                        return LocaUtils.getString("rcl.booklayer.residentSelection","rcl.booklayer.residentSelection.name.worker");
                     default:
                        return "";
                  }
                  return §§pop();
               }
               if(_loc3_)
               {
                  §§push(0);
                  if(_loc2_)
                  {
                  }
               }
               else
               {
                  addr0108:
                  §§push(2);
                  if(_loc2_)
                  {
                  }
               }
               §§goto(addr011f);
               §§goto(addr0108);
            }
            §§goto(addr00cd);
         }
         §§goto(addr00df);
      }
      
      public function get residentInfoText() : String
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:String = type;
         if(!(_loc2_ && _loc2_))
         {
            §§push(ServerResConst.RESOURCE_RICHMEN);
            if(_loc3_)
            {
               if(§§pop() === _loc1_)
               {
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     §§push(0);
                     if(_loc3_ || Boolean(this))
                     {
                     }
                  }
                  else
                  {
                     addr00ec:
                     §§push(1);
                     if(_loc2_ && _loc3_)
                     {
                     }
                  }
               }
               else
               {
                  §§push(ServerResConst.RESOURCE_ACADEMICS);
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     addr00e2:
                     if(§§pop() === _loc1_)
                     {
                        if(!_loc2_)
                        {
                           §§goto(addr00ec);
                        }
                        else
                        {
                           addr0117:
                           §§push(2);
                           if(_loc2_ && Boolean(_loc1_))
                           {
                           }
                        }
                        §§goto(addr0136);
                     }
                     else
                     {
                        §§goto(addr0112);
                     }
                  }
                  addr0112:
                  if(ServerResConst.RESOURCE_WORKERS === _loc1_)
                  {
                     §§goto(addr0117);
                  }
                  else
                  {
                     §§push(3);
                  }
                  §§goto(addr0136);
               }
               addr0136:
               switch(§§pop())
               {
                  case 0:
                     §§push(LocaUtils.getString("rcl.booklayer.residentSelection","rcl.booklayer.residentSelection.flavour.richMan"));
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        return §§pop();
                     }
                     §§goto(addr0052);
                     break;
                  case 1:
                     §§push(LocaUtils.getString("rcl.booklayer.residentSelection","rcl.booklayer.residentSelection.flavour.academics"));
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        addr0052:
                        return §§pop();
                     }
                     §§goto(addr0072);
                     break;
                  case 2:
                     §§push(LocaUtils.getString("rcl.booklayer.residentSelection","rcl.booklayer.residentSelection.flavour.worker"));
                     if(!_loc2_)
                     {
                        addr0072:
                        return §§pop();
                     }
                     break;
                  default:
                     return LocaUtils.getString("rcl.booklayer.residentSelection","rcl.booklayer.residentSelection.flavour.unknown");
               }
               return §§pop();
            }
            §§goto(addr00e2);
         }
         §§goto(addr0117);
      }
      
      public function get currencyName() : String
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:String = type;
         if(_loc2_)
         {
            §§push(ServerResConst.RESOURCE_RICHMEN);
            if(_loc2_)
            {
               if(§§pop() === _loc1_)
               {
                  if(_loc2_)
                  {
                     §§push(0);
                     if(_loc3_)
                     {
                     }
                  }
                  else
                  {
                     addr00de:
                     §§push(2);
                     if(_loc2_)
                     {
                     }
                  }
                  §§goto(addr00f5);
               }
               else
               {
                  §§push(ServerResConst.RESOURCE_ACADEMICS);
                  if(_loc2_)
                  {
                     if(§§pop() === _loc1_)
                     {
                        if(_loc2_)
                        {
                           addr00b3:
                           §§push(1);
                           if(_loc2_ || _loc3_)
                           {
                           }
                        }
                        else
                        {
                           §§goto(addr00de);
                        }
                        §§goto(addr00f5);
                     }
                     else
                     {
                        §§goto(addr00d9);
                     }
                  }
                  §§goto(addr00d9);
               }
            }
            addr00d9:
            if(ServerResConst.RESOURCE_WORKERS === _loc1_)
            {
               §§goto(addr00de);
            }
            else
            {
               §§push(3);
            }
            addr00f5:
            switch(§§pop())
            {
               case 0:
                  §§push(LocaUtils.getString("rcl.misc.resources","rcl.misc.resources.virtualcurrency"));
                  if(_loc2_)
                  {
                     return §§pop();
                  }
                  break;
               case 1:
                  §§push(LocaUtils.getString("rcl.misc.resources","rcl.misc.resources.educationpoints"));
                  if(!_loc3_)
                  {
                     return §§pop();
                  }
                  break;
               case 2:
                  return LocaUtils.getString("rcl.misc.resources","rcl.misc.resources.productionpoints");
               default:
                  return "";
            }
            return §§pop();
         }
         §§goto(addr00b3);
      }
      
      public function get cardBGImage() : BriskDynaVo
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:String = type;
         if(!_loc2_)
         {
            §§push(ServerResConst.RESOURCE_RICHMEN);
            if(!_loc2_)
            {
               if(§§pop() === _loc1_)
               {
                  if(_loc3_)
                  {
                     §§push(0);
                     if(_loc2_ && Boolean(this))
                     {
                     }
                  }
                  else
                  {
                     addr00ca:
                     §§push(1);
                     if(_loc2_)
                     {
                     }
                  }
               }
               else
               {
                  §§push(ServerResConst.RESOURCE_ACADEMICS);
                  if(_loc3_ || _loc3_)
                  {
                     if(§§pop() === _loc1_)
                     {
                        if(!_loc2_)
                        {
                           §§goto(addr00ca);
                        }
                        else
                        {
                           addr00df:
                           §§push(2);
                           if(_loc2_)
                           {
                           }
                        }
                        addr00f6:
                        switch(§§pop())
                        {
                           case 0:
                              return new BriskDynaVo("gui_popups_resSelectionPopup","card_bg_rich");
                           case 1:
                              return new BriskDynaVo("gui_popups_resSelectionPopup","card_bg_student");
                           case 2:
                              return new BriskDynaVo("gui_popups_resSelectionPopup","card_bg_work");
                           default:
                              return new BriskDynaVo("gui_popups_resSelectionPopup","card_bg_secret");
                        }
                     }
                     else
                     {
                        addr00da:
                        if(ServerResConst.RESOURCE_WORKERS === _loc1_)
                        {
                           §§goto(addr00df);
                        }
                        else
                        {
                           §§push(3);
                        }
                        §§goto(addr00f6);
                     }
                     §§goto(addr00df);
                  }
                  §§goto(addr00da);
               }
               §§goto(addr00f6);
            }
            §§goto(addr00da);
         }
         §§goto(addr00ca);
      }
      
      public function get currencyImage() : BriskDynaVo
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:String = type;
         if(!_loc2_)
         {
            §§push(ServerResConst.RESOURCE_RICHMEN);
            if(_loc3_ || _loc3_)
            {
               if(§§pop() === _loc1_)
               {
                  if(!_loc2_)
                  {
                     §§push(0);
                     if(_loc3_)
                     {
                     }
                  }
                  else
                  {
                     addr00d7:
                     §§push(2);
                     if(_loc3_)
                     {
                     }
                  }
                  addr00ee:
                  switch(§§pop())
                  {
                     case 0:
                        return new BriskDynaVo("gui_resources_icons","layer_cc_icon");
                     case 1:
                        return new BriskDynaVo("gui_popups_resSelectionPopup","icon_educationpoints");
                     case 2:
                        return new BriskDynaVo("gui_popups_resSelectionPopup","icon_productionpoint");
                     default:
                        return null;
                  }
               }
               else
               {
                  §§push(ServerResConst.RESOURCE_ACADEMICS);
                  if(!_loc2_)
                  {
                     addr00a4:
                     if(§§pop() === _loc1_)
                     {
                        if(!_loc2_)
                        {
                           §§push(1);
                           if(_loc3_ || Boolean(_loc1_))
                           {
                           }
                        }
                        else
                        {
                           §§goto(addr00d7);
                        }
                     }
                     else
                     {
                        addr00d2:
                        if(ServerResConst.RESOURCE_WORKERS === _loc1_)
                        {
                           §§goto(addr00d7);
                        }
                        else
                        {
                           §§push(3);
                        }
                     }
                     §§goto(addr00ee);
                  }
                  §§goto(addr00d2);
               }
               §§goto(addr00d7);
            }
            §§goto(addr00a4);
         }
         §§goto(addr00d7);
      }
   }
}

