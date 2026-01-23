package net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers
{
   import flash.display.Sprite;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.field.vo.ScheduledDropFieldObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.SmartObjectContainer;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IIcondataVo;
   import net.bigpoint.util.RisingBitmap;
   
   public class IconStateScheduledDropManager extends IconStateManager
   {
      
      private var _dropIcon:Sprite;
      
      private var _dropAvailable:Boolean;
      
      public function IconStateScheduledDropManager()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            super();
         }
      }
      
      override public function prepareIconStateManager(param1:IIcondataVo, param2:Sprite, param3:SmartObjectContainer) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(_loc5_)
         {
            _iconData = param1;
            if(_loc5_ || Boolean(param2))
            {
               _billboardObjectVo = param1 as BillboardObjectVo;
               if(_loc5_ || Boolean(param3))
               {
                  addr0059:
                  _iconContainer = param2;
                  if(_loc5_)
                  {
                     _smartObjectContainer = param3;
                     if(_loc5_ || Boolean(param2))
                     {
                        §§goto(addr0086);
                     }
                     §§goto(addr0095);
                  }
                  addr0086:
                  this._dropIcon = new Sprite();
                  if(!_loc4_)
                  {
                     addr0095:
                     super.prepareIconStateManager(param1,param2,param3);
                  }
               }
               §§goto(addr009d);
            }
            §§goto(addr0059);
         }
         addr009d:
      }
      
      override public function invalidateIconStateManager(param1:Boolean = false) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            §§push(!useIcons());
            if(!_loc3_)
            {
               var _temp_2:* = §§pop();
               §§push(_temp_2);
               if(!_temp_2)
               {
                  if(_loc2_)
                  {
                     §§pop();
                     if(!_loc3_)
                     {
                        addr0045:
                        addr003e:
                        if(_billboardObjectVo.userInteractionLocked)
                        {
                           while(true)
                           {
                              if(!_iconContainer.numChildren)
                              {
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    return;
                                 }
                                 addr0113:
                                 §§goto(addr00ed);
                              }
                              _iconContainer.removeChildAt(0);
                              if(_loc2_)
                              {
                                 continue;
                              }
                              addr00ba:
                              §§push(_billboardObjectVo.isConnectedToStreet);
                              if(_loc3_ && _loc3_)
                              {
                                 break;
                              }
                              if(§§pop())
                              {
                                 if(!_loc3_)
                                 {
                                    addr00e3:
                                    this._dropAvailable = true;
                                    if(!_loc3_)
                                    {
                                       addr00ed:
                                       this.setIcon();
                                       addr0113:
                                       if(_loc2_ || _loc2_)
                                       {
                                          addr0100:
                                          §§push(this._dropAvailable);
                                          break;
                                       }
                                       return;
                                    }
                                 }
                                 addr010d:
                                 super.invalidateIconStateManager(param1);
                                 §§goto(addr0113);
                              }
                           }
                           if(!§§pop())
                           {
                              if(_loc2_)
                              {
                                 §§goto(addr010d);
                              }
                           }
                           §§goto(addr0113);
                           addr005c:
                        }
                        else
                        {
                           this._dropAvailable = false;
                           if(_loc2_)
                           {
                              §§push(_billboardObjectVo.isHarvestReady);
                              if(_loc2_)
                              {
                                 var _temp_6:* = §§pop();
                                 §§push(_temp_6);
                                 if(_temp_6)
                                 {
                                    if(_loc2_)
                                    {
                                       addr00ac:
                                       §§pop();
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          §§goto(addr00ba);
                                       }
                                       §§goto(addr00e3);
                                    }
                                 }
                                 §§goto(addr00ce);
                              }
                              §§goto(addr00ac);
                           }
                        }
                        §§goto(addr0100);
                     }
                     §§goto(addr005c);
                  }
               }
            }
            §§goto(addr0045);
         }
         §§goto(addr003e);
      }
      
      override protected function setIcon() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc1_:Sprite = null;
         if(!(_loc4_ && _loc3_))
         {
            clear(this._dropIcon);
            if(!_loc4_)
            {
               §§push(_billboardObjectVo.currentMode == "");
               if(_loc3_)
               {
                  var _temp_2:* = §§pop();
                  §§push(_temp_2);
                  if(_temp_2)
                  {
                     if(!_loc4_)
                     {
                        §§pop();
                        if(!(_loc4_ && Boolean(_loc1_)))
                        {
                           §§push(_billboardObjectVo.hideIconsForMoveMode);
                           if(_loc3_ || Boolean(this))
                           {
                              addr0074:
                              if(§§pop())
                              {
                                 if(_loc3_)
                                 {
                                    super.checkGroundRestrictions();
                                    if(!_loc4_)
                                    {
                                       super.checkBlockedByGround();
                                       if(_loc3_)
                                       {
                                          super.checkConnected();
                                          if(_loc3_)
                                          {
                                             addr009c:
                                             super.setIcon();
                                             if(!(_loc4_ && Boolean(_loc2_)))
                                             {
                                                addr00af:
                                                _iconContainer.visible = true;
                                                if(!_loc4_)
                                                {
                                                   §§goto(addr00bb);
                                                }
                                             }
                                             else
                                             {
                                                addr00d0:
                                                super.checkConnected();
                                             }
                                          }
                                          addr0163:
                                          var _loc2_:* = (_billboardObjectVo as ScheduledDropFieldObjectVo).tagType;
                                          if(!_loc4_)
                                          {
                                             §§push(ServerTagConstants.CHRISTMAS_TREE);
                                             if(_loc3_)
                                             {
                                                §§push(_loc2_);
                                                if(!_loc4_)
                                                {
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(_loc3_ || Boolean(_loc1_))
                                                      {
                                                         addr0196:
                                                         §§push(0);
                                                         if(_loc3_)
                                                         {
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr01ab:
                                                         §§push(1);
                                                         if(_loc4_ && Boolean(_loc1_))
                                                         {
                                                         }
                                                      }
                                                      §§goto(addr01cb);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr01a7);
                                                   }
                                                }
                                                addr01a7:
                                                §§goto(addr01a6);
                                             }
                                             addr01a6:
                                             if(ServerTagConstants.CLIENT_OLYMPIC_STADIUM === _loc2_)
                                             {
                                                §§goto(addr01ab);
                                             }
                                             else
                                             {
                                                §§push(2);
                                             }
                                             addr01cb:
                                             loop1:
                                             switch(§§pop())
                                             {
                                                case 0:
                                                   this._dropIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"TownHallHarvestReady",true));
                                                   if(!(_loc4_ && Boolean(_loc2_)))
                                                   {
                                                      addr01e9:
                                                      _loc1_ = this._dropIcon;
                                                   }
                                                   do
                                                   {
                                                      if(!_iconContainer.numChildren)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            if(_loc1_ != null)
                                                            {
                                                               if(!(_loc4_ && Boolean(_loc1_)))
                                                               {
                                                                  addr0227:
                                                                  _currentIcon = _loc1_;
                                                                  if(!_loc3_)
                                                                  {
                                                                     break loop1;
                                                                  }
                                                                  _iconContainer.addChild(_loc1_);
                                                                  if(!(_loc3_ || Boolean(this)))
                                                                  {
                                                                     break;
                                                                  }
                                                               }
                                                               if(!_billboardObjectVo.userInteractionLocked)
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     _iconContainer.mouseEnabled = true;
                                                                     if(_loc3_ || Boolean(_loc2_))
                                                                     {
                                                                        break;
                                                                     }
                                                                  }
                                                                  break loop1;
                                                               }
                                                               break;
                                                            }
                                                            super.setIcon();
                                                            if(!_loc4_)
                                                            {
                                                               break;
                                                            }
                                                         }
                                                         break loop1;
                                                      }
                                                      _iconContainer.removeChildAt(0);
                                                   }
                                                   while(!_loc4_);
                                                   
                                                   super.checkContainerPosition();
                                                   break;
                                                   addr0204:
                                                case 1:
                                                   this._dropIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"OlympicIcon",true));
                                                   if(_loc3_)
                                                   {
                                                   }
                                                   §§goto(addr01e9);
                                                default:
                                                   this._dropIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"TownHallHarvestReady",true));
                                                   if(_loc3_ || Boolean(_loc1_))
                                                   {
                                                      §§goto(addr01e9);
                                                   }
                                                   §§goto(addr0227);
                                             }
                                             return;
                                          }
                                          §§goto(addr0196);
                                       }
                                       §§goto(addr00d0);
                                    }
                                    §§goto(addr00bb);
                                 }
                                 §§goto(addr00af);
                              }
                              else
                              {
                                 addr00c6:
                                 if(this._dropAvailable)
                                 {
                                    if(!_loc4_)
                                    {
                                       §§goto(addr00d0);
                                    }
                                    §§goto(addr0163);
                                 }
                              }
                              §§goto(addr0204);
                           }
                           §§goto(addr00c6);
                        }
                        §§goto(addr009c);
                     }
                     §§goto(addr00c6);
                  }
                  §§goto(addr0074);
               }
               §§goto(addr00c6);
            }
            §§goto(addr0163);
         }
         addr00bb:
      }
   }
}

