package net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers
{
   import flash.display.Sprite;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.field.vo.CitySquareFieldObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.SmartObjectContainer;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IIcondataVo;
   import net.bigpoint.util.RisingBitmap;
   
   public class IconStateCitySquareManager extends IconStateManager
   {
      
      private var _citySquareIcon:Sprite;
      
      private var _hasState:Boolean;
      
      public function IconStateCitySquareManager()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            super();
         }
      }
      
      override public function prepareIconStateManager(param1:IIcondataVo, param2:Sprite, param3:SmartObjectContainer) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(!(_loc5_ && Boolean(param2)))
         {
            _iconData = param1;
            if(_loc4_ || Boolean(param1))
            {
               _billboardObjectVo = param1 as BillboardObjectVo;
               if(_loc4_ || Boolean(param1))
               {
                  addr005e:
                  _iconContainer = param2;
                  if(!(_loc5_ && Boolean(param2)))
                  {
                     addr007f:
                     _smartObjectContainer = param3;
                     if(!_loc5_)
                     {
                        this._citySquareIcon = new Sprite();
                        if(!_loc5_)
                        {
                           addr009b:
                           super.prepareIconStateManager(param1,param2,param3);
                        }
                        §§goto(addr00a3);
                     }
                  }
                  §§goto(addr009b);
               }
               addr00a3:
               return;
            }
            §§goto(addr005e);
         }
         §§goto(addr007f);
      }
      
      override public function invalidateIconStateManager(param1:Boolean = false) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            §§push(!useIcons());
            if(!_loc2_)
            {
               var _temp_2:* = §§pop();
               §§push(_temp_2);
               if(!_temp_2)
               {
                  if(_loc3_ || _loc3_)
                  {
                     addr0037:
                     §§pop();
                     if(_loc3_ || Boolean(this))
                     {
                        §§goto(addr004c);
                     }
                     §§goto(addr0063);
                  }
               }
               addr004c:
               if(_billboardObjectVo.userInteractionLocked)
               {
                  do
                  {
                     if(_iconContainer.numChildren)
                     {
                        continue;
                     }
                     if(_loc3_)
                     {
                        return;
                     }
                     addr009e:
                     if(this.citySquareFieldObjectVo.currentEventState == CitySquareFieldObjectVo.NONE)
                     {
                        break;
                     }
                     if(_loc3_ || _loc2_)
                     {
                        this._hasState = true;
                        if(!(_loc3_ || Boolean(this)))
                        {
                           break;
                        }
                     }
                     this.setIcon();
                     if(!(_loc2_ && _loc3_))
                     {
                        break;
                     }
                  }
                  while(_iconContainer.removeChildAt(0), _loc3_);
                  
                  if(!this._hasState)
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        super.invalidateIconStateManager(param1);
                     }
                  }
                  addr0063:
               }
               else
               {
                  this._hasState = false;
                  if(_loc3_ || _loc2_)
                  {
                     §§goto(addr009e);
                  }
               }
               return;
            }
            §§goto(addr0037);
         }
         §§goto(addr0063);
      }
      
      override protected function setIcon() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc1_:Sprite = null;
         if(_loc3_)
         {
            clear(this._citySquareIcon);
            if(_loc3_ || _loc3_)
            {
               §§push(_billboardObjectVo.currentMode == "");
               if(_loc3_)
               {
                  var _temp_2:* = §§pop();
                  §§push(_temp_2);
                  if(_temp_2)
                  {
                     if(!(_loc4_ && _loc3_))
                     {
                        §§pop();
                        if(!(_loc4_ && _loc3_))
                        {
                           §§push(_billboardObjectVo.hideIconsForMoveMode);
                           if(!_loc4_)
                           {
                              addr0071:
                              if(§§pop())
                              {
                                 if(!(_loc4_ && Boolean(_loc1_)))
                                 {
                                    super.checkGroundRestrictions();
                                    if(_loc3_ || Boolean(_loc1_))
                                    {
                                       §§goto(addr0095);
                                    }
                                    §§goto(addr00e2);
                                 }
                                 §§goto(addr00aa);
                              }
                              §§goto(addr00cd);
                           }
                           §§goto(addr00d1);
                        }
                        §§goto(addr01a7);
                     }
                     §§goto(addr00d1);
                  }
               }
               §§goto(addr0071);
            }
            addr0095:
            super.checkBlockedByGround();
            if(_loc3_)
            {
               addr009f:
               super.checkConnected();
               if(!_loc4_)
               {
                  addr00aa:
                  super.setIcon();
                  if(_loc3_)
                  {
                     _iconContainer.visible = true;
                     if(_loc3_)
                     {
                        §§goto(addr00bf);
                     }
                     else
                     {
                        addr01a7:
                        var _loc2_:* = this.citySquareFieldObjectVo.currentEventState;
                        if(!(_loc4_ && _loc3_))
                        {
                           §§push(CitySquareFieldObjectVo.AVAILIBLE);
                           if(!(_loc4_ && Boolean(this)))
                           {
                              §§push(_loc2_);
                              if(!(_loc4_ && Boolean(_loc1_)))
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(!_loc4_)
                                    {
                                       §§push(0);
                                       if(_loc3_)
                                       {
                                       }
                                    }
                                    else
                                    {
                                       addr0212:
                                       §§push(1);
                                       if(_loc3_ || Boolean(this))
                                       {
                                       }
                                    }
                                 }
                                 else
                                 {
                                    §§push(CitySquareFieldObjectVo.EXPIRED);
                                    if(!_loc4_)
                                    {
                                       §§push(_loc2_);
                                       if(!_loc4_)
                                       {
                                          if(§§pop() === §§pop())
                                          {
                                             if(_loc3_)
                                             {
                                                §§goto(addr0212);
                                             }
                                             else
                                             {
                                                addr0248:
                                                §§push(2);
                                                if(_loc4_ && _loc3_)
                                                {
                                                }
                                             }
                                          }
                                          else
                                          {
                                             §§push(CitySquareFieldObjectVo.RUNNING);
                                             if(!_loc4_)
                                             {
                                                addr0231:
                                                §§push(_loc2_);
                                                if(_loc3_)
                                                {
                                                   addr0237:
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(_loc3_ || Boolean(_loc2_))
                                                      {
                                                         §§goto(addr0248);
                                                      }
                                                      else
                                                      {
                                                         addr0267:
                                                         §§push(3);
                                                         if(_loc3_ || Boolean(_loc2_))
                                                         {
                                                         }
                                                      }
                                                      §§goto(addr0286);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr0263);
                                                   }
                                                }
                                                addr0263:
                                                §§goto(addr0262);
                                             }
                                             addr0262:
                                             if(CitySquareFieldObjectVo.FINISHED === _loc2_)
                                             {
                                                §§goto(addr0267);
                                             }
                                             else
                                             {
                                                §§push(4);
                                             }
                                             §§goto(addr0286);
                                          }
                                          §§goto(addr0286);
                                       }
                                       §§goto(addr0263);
                                    }
                                    §§goto(addr0231);
                                 }
                                 addr0286:
                                 loop1:
                                 switch(§§pop())
                                 {
                                    case 0:
                                       this._citySquareIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"CitySquareIconEventAvailible",true));
                                       if(_loc3_)
                                       {
                                          addr02a1:
                                          _loc1_ = this._citySquareIcon;
                                          do
                                          {
                                             if(_iconContainer.numChildren)
                                             {
                                                continue;
                                             }
                                             if(!_loc4_)
                                             {
                                                addr02d4:
                                                if(_loc1_ != null)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      break;
                                                   }
                                                   _currentIcon = _loc1_;
                                                   if(!_loc4_)
                                                   {
                                                      _iconContainer.addChild(_loc1_);
                                                      if(_loc4_ && _loc3_)
                                                      {
                                                         break;
                                                      }
                                                      if(!_billboardObjectVo.userInteractionLocked)
                                                      {
                                                         if(_loc3_ || Boolean(_loc2_))
                                                         {
                                                            break;
                                                         }
                                                         break loop1;
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   super.setIcon();
                                                   if(!_loc3_)
                                                   {
                                                      break loop1;
                                                   }
                                                }
                                             }
                                          }
                                          while(_iconContainer.removeChildAt(0), !(_loc4_ && Boolean(_loc1_)));
                                          
                                          addr0325:
                                          _iconContainer.mouseEnabled = true;
                                          if(_loc4_)
                                          {
                                             break;
                                          }
                                          addr02c4:
                                       }
                                       super.checkContainerPosition();
                                       break;
                                    case 1:
                                       this._citySquareIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"CitySquareIconEventExpired",true));
                                       if(!(_loc4_ && Boolean(this)))
                                       {
                                          §§goto(addr02a1);
                                       }
                                       §§goto(addr02d4);
                                    case 2:
                                       this._citySquareIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"CitySquareIconEventRunning",true));
                                       if(_loc3_ || Boolean(this))
                                       {
                                          §§goto(addr02a1);
                                       }
                                       §§goto(addr0325);
                                    case 3:
                                       this._citySquareIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"CitySquareIconEventFinished",true));
                                       if(!(_loc4_ && Boolean(_loc1_)))
                                       {
                                          §§goto(addr02a1);
                                       }
                                       §§goto(addr02c4);
                                    default:
                                       §§goto(addr02a1);
                                 }
                                 return;
                              }
                              §§goto(addr0237);
                           }
                           §§goto(addr0231);
                        }
                        §§goto(addr0212);
                     }
                  }
                  else
                  {
                     addr00cd:
                     addr00d1:
                     if(this._hasState)
                     {
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           addr00e2:
                           super.checkConnected();
                        }
                        §§goto(addr01a7);
                     }
                  }
                  §§goto(addr02c4);
               }
               §§goto(addr00e2);
            }
            addr00bf:
            return;
         }
         §§goto(addr009f);
      }
      
      private function get citySquareFieldObjectVo() : CitySquareFieldObjectVo
      {
         return _billboardObjectVo as CitySquareFieldObjectVo;
      }
   }
}

