package net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers
{
   import flash.display.Sprite;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.field.vo.InfrastructureBuildingFieldObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.SmartObjectContainer;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IIcondataVo;
   import net.bigpoint.util.RisingBitmap;
   
   public class IconStateDepartmentManager extends IconStateManager
   {
      
      private var _levelUpIcon:Sprite;
      
      private var _profLevelUp:Boolean;
      
      public function IconStateDepartmentManager()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            super();
         }
      }
      
      override public function prepareIconStateManager(param1:IIcondataVo, param2:Sprite, param3:SmartObjectContainer) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(_loc4_ || Boolean(param3))
         {
            _iconData = param1;
            if(_loc4_)
            {
               _billboardObjectVo = param1 as BillboardObjectVo;
               if(_loc4_ || Boolean(param1))
               {
                  addr0056:
                  _iconContainer = param2;
                  if(!(_loc5_ && Boolean(this)))
                  {
                     addr0077:
                     _smartObjectContainer = param3;
                     if(!_loc5_)
                     {
                        this._levelUpIcon = new Sprite();
                        if(!_loc5_)
                        {
                           addr0093:
                           super.prepareIconStateManager(param1,param2,param3);
                        }
                        §§goto(addr009b);
                     }
                  }
                  §§goto(addr0093);
               }
               §§goto(addr0077);
            }
            addr009b:
            return;
         }
         §§goto(addr0056);
      }
      
      override public function invalidateIconStateManager(param1:Boolean = false) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            §§push(!useIcons());
            if(_loc2_ || Boolean(this))
            {
               var _temp_3:* = §§pop();
               §§push(_temp_3);
               if(!_temp_3)
               {
                  if(!_loc3_)
                  {
                     addr003e:
                     §§pop();
                     if(_loc2_ || _loc2_)
                     {
                        addr0053:
                        if(_billboardObjectVo.userInteractionLocked)
                        {
                           while(true)
                           {
                              if(!_iconContainer.numChildren)
                              {
                                 if(_loc2_)
                                 {
                                    return;
                                 }
                                 break;
                              }
                              _iconContainer.removeChildAt(0);
                              if(_loc2_)
                              {
                                 continue;
                              }
                              addr0099:
                              §§push((_billboardObjectVo as InfrastructureBuildingFieldObjectVo).professionalCanLevelUp);
                              if(_loc2_ || _loc3_)
                              {
                                 §§push(§§pop());
                                 if(!_loc3_)
                                 {
                                    var _temp_6:* = §§pop();
                                    §§push(_temp_6);
                                    §§push(_temp_6);
                                    if(!_loc3_)
                                    {
                                       if(§§pop())
                                       {
                                          if(!_loc3_)
                                          {
                                             addr00d2:
                                             §§pop();
                                             if(_loc2_ || _loc2_)
                                             {
                                                §§push(!_billboardObjectVo.isUnderConstruction());
                                                if(!(_loc3_ && _loc3_))
                                                {
                                                   addr00f5:
                                                   var _temp_9:* = §§pop();
                                                   addr00f6:
                                                   §§push(_temp_9);
                                                   if(_temp_9)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         addr00ff:
                                                         §§pop();
                                                         if(!_loc2_)
                                                         {
                                                            break;
                                                         }
                                                         §§push(_billboardObjectVo.isConnectedToStreet);
                                                         if(_loc2_ || Boolean(this))
                                                         {
                                                            addr0119:
                                                            if(§§pop())
                                                            {
                                                               if(!(_loc3_ && _loc2_))
                                                               {
                                                                  this._profLevelUp = true;
                                                                  if(_loc2_ || _loc3_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§goto(addr0165);
                                                               }
                                                               break;
                                                            }
                                                            addr0152:
                                                            §§push(this._profLevelUp);
                                                         }
                                                      }
                                                      §§goto(addr0156);
                                                   }
                                                   §§goto(addr0119);
                                                }
                                                §§goto(addr0156);
                                             }
                                             §§goto(addr015f);
                                          }
                                          addr0156:
                                          if(!§§pop())
                                          {
                                             if(!_loc3_)
                                             {
                                                addr015f:
                                                super.invalidateIconStateManager(param1);
                                             }
                                          }
                                          §§goto(addr0165);
                                       }
                                       §§goto(addr00f5);
                                    }
                                    §§goto(addr00f6);
                                 }
                                 §§goto(addr00d2);
                              }
                              §§goto(addr00ff);
                           }
                           this.setIcon();
                           if(!_loc3_)
                           {
                              §§goto(addr0152);
                           }
                           addr0165:
                           return;
                           addr006a:
                        }
                        else
                        {
                           this._profLevelUp = false;
                           if(!(_loc3_ && _loc2_))
                           {
                              §§goto(addr0099);
                           }
                        }
                        §§goto(addr015f);
                     }
                     §§goto(addr006a);
                  }
               }
               §§goto(addr0053);
            }
            §§goto(addr003e);
         }
         §§goto(addr006a);
      }
      
      override protected function setIcon() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Sprite = null;
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            clear(this._levelUpIcon);
            if(!(_loc2_ && Boolean(this)))
            {
               §§push(_billboardObjectVo.currentMode == "");
               if(_loc3_ || _loc3_)
               {
                  var _temp_5:* = §§pop();
                  §§push(_temp_5);
                  if(_temp_5)
                  {
                     if(_loc3_)
                     {
                        §§pop();
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           §§push(_billboardObjectVo.hideIconsForMoveMode);
                           if(!_loc2_)
                           {
                              addr0078:
                              if(§§pop())
                              {
                                 if(!_loc2_)
                                 {
                                    addr0081:
                                    super.checkGroundRestrictions();
                                    if(_loc3_)
                                    {
                                       super.checkBlockedByGround();
                                       if(_loc3_ || Boolean(_loc1_))
                                       {
                                          addr009d:
                                          super.checkConnected();
                                          if(_loc3_ || _loc2_)
                                          {
                                             addr00bb:
                                             super.setIcon();
                                             if(!_loc2_)
                                             {
                                                return;
                                             }
                                          }
                                       }
                                       addr00e0:
                                       this._levelUpIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"professional_levelup",true));
                                       addr00fa:
                                       _loc1_ = this._levelUpIcon;
                                       do
                                       {
                                          if(_iconContainer.numChildren)
                                          {
                                             continue;
                                          }
                                          if(!_loc2_)
                                          {
                                             if(_loc1_ != null)
                                             {
                                                if(_loc3_ || _loc2_)
                                                {
                                                   break;
                                                }
                                                addr017a:
                                                _iconContainer.mouseEnabled = true;
                                                if(!_loc2_)
                                                {
                                                   addr019c:
                                                   super.checkContainerPosition();
                                                }
                                             }
                                             else
                                             {
                                                super.setIcon();
                                                if(_loc3_ || _loc3_)
                                                {
                                                   §§goto(addr019c);
                                                }
                                             }
                                             §§goto(addr01a1);
                                          }
                                          §§goto(addr019c);
                                       }
                                       while(_iconContainer.removeChildAt(0), _loc3_);
                                       
                                       _currentIcon = _loc1_;
                                       if(_loc3_ || Boolean(_loc1_))
                                       {
                                          _iconContainer.addChild(_loc1_);
                                          if(!_loc2_)
                                          {
                                             if(!_billboardObjectVo.userInteractionLocked)
                                             {
                                                if(_loc3_ || _loc2_)
                                                {
                                                   §§goto(addr017a);
                                                }
                                             }
                                          }
                                          §§goto(addr019c);
                                       }
                                       addr01a1:
                                       return;
                                       addr0114:
                                    }
                                 }
                                 §§goto(addr00bb);
                              }
                              else
                              {
                                 addr00d7:
                                 if(this._profLevelUp)
                                 {
                                    if(!_loc2_)
                                    {
                                       §§goto(addr00e0);
                                    }
                                    §§goto(addr00fa);
                                 }
                              }
                              §§goto(addr0114);
                           }
                           §§goto(addr00d7);
                        }
                        §§goto(addr009d);
                     }
                  }
                  §§goto(addr0078);
               }
               §§goto(addr00d7);
            }
            §§goto(addr00fa);
         }
         §§goto(addr0081);
      }
   }
}

