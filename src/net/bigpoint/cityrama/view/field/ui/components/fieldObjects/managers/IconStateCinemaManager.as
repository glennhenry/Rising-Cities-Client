package net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers
{
   import flash.display.Sprite;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.field.vo.CinemaFieldObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.SmartObjectContainer;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IIcondataVo;
   import net.bigpoint.util.RisingBitmap;
   
   public class IconStateCinemaManager extends IconStateManager
   {
      
      private var _cinemaIcon:Sprite;
      
      private var _videoAvailable:Boolean;
      
      public function IconStateCinemaManager()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
         }
      }
      
      override public function prepareIconStateManager(param1:IIcondataVo, param2:Sprite, param3:SmartObjectContainer) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(_loc5_ || Boolean(param2))
         {
            _iconData = param1;
            if(!_loc4_)
            {
               _billboardObjectVo = param1 as BillboardObjectVo;
               if(!(_loc4_ && Boolean(param1)))
               {
                  _iconContainer = param2;
                  if(!_loc4_)
                  {
                     addr006d:
                     _smartObjectContainer = param3;
                     if(_loc5_ || Boolean(param1))
                     {
                        this._cinemaIcon = new Sprite();
                        if(!_loc4_)
                        {
                           addr0091:
                           super.prepareIconStateManager(param1,param2,param3);
                        }
                        §§goto(addr0099);
                     }
                  }
                  §§goto(addr0091);
               }
               §§goto(addr006d);
            }
            addr0099:
            return;
         }
         §§goto(addr006d);
      }
      
      override public function invalidateIconStateManager(param1:Boolean = false) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            §§push(!useIcons());
            if(!(_loc2_ && _loc2_))
            {
               var _temp_4:* = §§pop();
               §§push(_temp_4);
               if(!_temp_4)
               {
                  if(!_loc2_)
                  {
                     §§pop();
                     if(_loc3_ || _loc2_)
                     {
                        addr0054:
                        addr004d:
                        if(_billboardObjectVo.userInteractionLocked)
                        {
                           do
                           {
                              if(_iconContainer.numChildren)
                              {
                                 continue;
                              }
                              if(!_loc2_)
                              {
                                 return;
                              }
                           }
                           while(_iconContainer.removeChildAt(0), _loc3_);
                           
                           addr0114:
                           §§push(!_billboardObjectVo.isReadyToInaugurate);
                           if(_loc3_ || _loc3_)
                           {
                              addr0128:
                              if(§§pop())
                              {
                                 if(!_loc2_)
                                 {
                                    checkActivateReady();
                                    if(!(_loc2_ && param1))
                                    {
                                       §§goto(addr0145);
                                    }
                                    §§goto(addr0162);
                                 }
                                 §§goto(addr0145);
                              }
                              §§goto(addr0175);
                           }
                           §§goto(addr0179);
                           addr006b:
                        }
                        this._videoAvailable = false;
                        if(!_loc2_)
                        {
                           §§push((_billboardObjectVo as CinemaFieldObjectVo).videoAvailable);
                           if(_loc3_ || Boolean(this))
                           {
                              §§push(§§pop());
                              if(!(_loc2_ && Boolean(this)))
                              {
                                 addr00af:
                                 var _temp_12:* = §§pop();
                                 §§push(_temp_12);
                                 §§push(_temp_12);
                                 if(_loc3_ || _loc2_)
                                 {
                                    if(§§pop())
                                    {
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          §§pop();
                                          if(_loc3_ || param1)
                                          {
                                             addr00e8:
                                             §§push(_billboardObjectVo.isConnectedToStreet);
                                             if(_loc3_)
                                             {
                                                addr00f4:
                                                var _temp_16:* = §§pop();
                                                addr00f5:
                                                §§push(_temp_16);
                                                if(_temp_16)
                                                {
                                                   if(_loc3_ || _loc3_)
                                                   {
                                                      §§pop();
                                                      if(!(_loc2_ && _loc3_))
                                                      {
                                                         §§goto(addr0114);
                                                      }
                                                      addr0145:
                                                      this._videoAvailable = true;
                                                      if(!(_loc2_ && param1))
                                                      {
                                                         addr0162:
                                                         this.setIcon();
                                                         if(!(_loc2_ && Boolean(this)))
                                                         {
                                                            addr0175:
                                                            addr0179:
                                                            if(!this._videoAvailable)
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  super.invalidateIconStateManager(param1);
                                                               }
                                                            }
                                                         }
                                                      }
                                                      return;
                                                   }
                                                }
                                                §§goto(addr0128);
                                             }
                                             §§goto(addr0179);
                                          }
                                          §§goto(addr0162);
                                       }
                                       §§goto(addr0179);
                                    }
                                    §§goto(addr00f4);
                                 }
                                 §§goto(addr00f5);
                              }
                              §§goto(addr0179);
                           }
                           §§goto(addr00af);
                        }
                        §§goto(addr00e8);
                     }
                     §§goto(addr006b);
                  }
               }
            }
            §§goto(addr0054);
         }
         §§goto(addr004d);
      }
      
      override protected function setIcon() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Sprite = null;
         if(_loc3_ || Boolean(_loc1_))
         {
            clear(this._cinemaIcon);
            if(!_loc2_)
            {
               §§push(_billboardObjectVo.currentMode == "");
               if(!(_loc2_ && Boolean(this)))
               {
                  var _temp_4:* = §§pop();
                  §§push(_temp_4);
                  if(_temp_4)
                  {
                     if(_loc3_ || Boolean(this))
                     {
                        §§pop();
                        if(!_loc2_)
                        {
                           §§push(_billboardObjectVo.hideIconsForMoveMode);
                           if(!_loc2_)
                           {
                              addr0071:
                              if(§§pop())
                              {
                                 if(_loc3_ || _loc2_)
                                 {
                                    addr0082:
                                    super.checkGroundRestrictions();
                                    if(_loc3_)
                                    {
                                       addr008c:
                                       super.checkBlockedByGround();
                                       if(_loc3_)
                                       {
                                          addr0096:
                                          super.checkConnected();
                                          if(_loc3_ || Boolean(this))
                                          {
                                             addr00a8:
                                             super.setIcon();
                                             if(_loc3_ || _loc2_)
                                             {
                                                return;
                                             }
                                             addr00d5:
                                             addr00d9:
                                             if(this._videoAvailable)
                                             {
                                                if(!(_loc2_ && _loc3_))
                                                {
                                                   this._cinemaIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"CinemaIcon",true));
                                                }
                                                addr0104:
                                                _loc1_ = this._cinemaIcon;
                                             }
                                             do
                                             {
                                                if(_iconContainer.numChildren)
                                                {
                                                   continue;
                                                }
                                                if(!(_loc2_ && _loc2_))
                                                {
                                                   if(_loc1_ != null)
                                                   {
                                                      if(!(_loc2_ && _loc3_))
                                                      {
                                                         addr0148:
                                                         _currentIcon = _loc1_;
                                                         if(!_loc2_)
                                                         {
                                                            _iconContainer.addChild(_loc1_);
                                                            if(!(_loc2_ && _loc3_))
                                                            {
                                                               break;
                                                            }
                                                            §§goto(addr01ac);
                                                         }
                                                         break;
                                                      }
                                                      addr0182:
                                                      _iconContainer.mouseEnabled = true;
                                                      if(_loc3_ || Boolean(this))
                                                      {
                                                         §§goto(addr01ac);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      super.setIcon();
                                                      if(!(_loc2_ && _loc2_))
                                                      {
                                                         addr01ac:
                                                         super.checkContainerPosition();
                                                         §§goto(addr01b1);
                                                      }
                                                   }
                                                   §§goto(addr01b1);
                                                }
                                                §§goto(addr0148);
                                             }
                                             while(_iconContainer.removeChildAt(0), !_loc2_);
                                             
                                             if(!_billboardObjectVo.userInteractionLocked)
                                             {
                                                if(!_loc2_)
                                                {
                                                   §§goto(addr0182);
                                                }
                                                addr01b1:
                                                return;
                                             }
                                             §§goto(addr01ac);
                                          }
                                          §§goto(addr0104);
                                       }
                                       §§goto(addr00a8);
                                    }
                                    §§goto(addr0096);
                                 }
                              }
                              §§goto(addr00d5);
                           }
                           §§goto(addr00d9);
                        }
                        §§goto(addr00a8);
                     }
                     §§goto(addr00d9);
                  }
                  §§goto(addr0071);
               }
               §§goto(addr00d9);
            }
            §§goto(addr008c);
         }
         §§goto(addr0082);
      }
   }
}

