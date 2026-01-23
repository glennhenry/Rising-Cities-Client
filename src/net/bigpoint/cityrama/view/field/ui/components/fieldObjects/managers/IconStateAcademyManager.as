package net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers
{
   import flash.display.Sprite;
   import net.bigpoint.cityrama.model.field.vo.AcademyFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.SmartObjectContainer;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IIcondataVo;
   import net.bigpoint.util.RisingBitmap;
   
   public class IconStateAcademyManager extends IconStateManager
   {
      
      private var _educationIcon:Sprite;
      
      private var _educationIsDone:Boolean;
      
      private var _educationIsIdle:Boolean;
      
      public function IconStateAcademyManager()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
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
            if(!(_loc4_ && Boolean(this)))
            {
               _billboardObjectVo = param1 as BillboardObjectVo;
               if(!(_loc4_ && Boolean(param3)))
               {
                  _iconContainer = param2;
                  if(!(_loc4_ && Boolean(this)))
                  {
                     addr0077:
                     _smartObjectContainer = param3;
                     if(!_loc4_)
                     {
                        this._educationIcon = new Sprite();
                        if(_loc5_ || Boolean(param3))
                        {
                           addr009b:
                           super.prepareIconStateManager(param1,param2,param3);
                        }
                        §§goto(addr00a3);
                     }
                     §§goto(addr009b);
                  }
                  addr00a3:
                  return;
               }
               §§goto(addr0077);
            }
         }
         §§goto(addr009b);
      }
      
      override public function invalidateIconStateManager(param1:Boolean = false) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_ || Boolean(this))
         {
            §§push(!useIcons());
            if(!_loc3_)
            {
               var _temp_3:* = §§pop();
               §§push(_temp_3);
               if(!_temp_3)
               {
                  if(!_loc3_)
                  {
                     addr003c:
                     §§pop();
                     if(!(_loc3_ && _loc3_))
                     {
                        addr0051:
                        if(_billboardObjectVo.userInteractionLocked)
                        {
                           do
                           {
                              if(!_iconContainer.numChildren)
                              {
                                 if(_loc4_)
                                 {
                                    return;
                                 }
                                 break;
                              }
                              _iconContainer.removeChildAt(0);
                           }
                           while(!(_loc3_ && _loc2_));
                           
                           addr0150:
                           this.setIcon();
                           if(_loc4_)
                           {
                              addr0217:
                              §§push(this._educationIsDone);
                              if(!(_loc3_ && param1))
                              {
                                 §§push(!§§pop());
                                 if(_loc4_)
                                 {
                                    addr022f:
                                    var _temp_7:* = §§pop();
                                    addr0230:
                                    §§push(_temp_7);
                                    if(_temp_7)
                                    {
                                       if(!(_loc3_ && param1))
                                       {
                                          §§goto(addr024c);
                                       }
                                       §§goto(addr0265);
                                    }
                                    §§goto(addr0266);
                                 }
                                 §§goto(addr0265);
                              }
                              §§goto(addr022f);
                           }
                           §§goto(addr026f);
                           addr0070:
                        }
                        else
                        {
                           var _temp_10:* = this;
                           var _loc2_:Boolean;
                           this._educationIsIdle = _loc2_ = false;
                           _temp_10._educationIsDone = _loc2_;
                           if(_loc4_ || _loc2_)
                           {
                              §§push((_billboardObjectVo as AcademyFieldObjectVo).educationIsDone);
                              if(!(_loc3_ && param1))
                              {
                                 §§push(§§pop());
                                 if(_loc4_)
                                 {
                                    var _temp_13:* = §§pop();
                                    §§push(_temp_13);
                                    §§push(_temp_13);
                                    if(_loc4_)
                                    {
                                       if(§§pop())
                                       {
                                          if(!(_loc3_ && param1))
                                          {
                                             §§pop();
                                             if(_loc4_)
                                             {
                                                §§push(!_billboardObjectVo.isUnderConstruction());
                                                if(!_loc3_)
                                                {
                                                   addr00f5:
                                                   var _temp_15:* = §§pop();
                                                   §§push(_temp_15);
                                                   §§push(_temp_15);
                                                   if(_loc4_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            addr0106:
                                                            §§pop();
                                                            if(!(_loc3_ && param1))
                                                            {
                                                               addr0114:
                                                               §§push(_billboardObjectVo.isConnectedToStreet);
                                                               if(!(_loc3_ && _loc3_))
                                                               {
                                                                  addr0134:
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc4_)
                                                                     {
                                                                        this._educationIsDone = true;
                                                                        if(!(_loc3_ && _loc3_))
                                                                        {
                                                                           §§goto(addr0150);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr020b:
                                                                           this.setIcon();
                                                                           if(_loc4_)
                                                                           {
                                                                              §§goto(addr0217);
                                                                           }
                                                                        }
                                                                        §§goto(addr026f);
                                                                     }
                                                                     §§goto(addr0253);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push((_billboardObjectVo as AcademyFieldObjectVo).educationIsIdle);
                                                                     if(!(_loc3_ && param1))
                                                                     {
                                                                        addr0177:
                                                                        §§push(§§pop());
                                                                        if(_loc4_)
                                                                        {
                                                                           addr017e:
                                                                           var _temp_20:* = §§pop();
                                                                           §§push(_temp_20);
                                                                           §§push(_temp_20);
                                                                           if(!(_loc3_ && param1))
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    addr0196:
                                                                                    §§pop();
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       §§push(!_billboardObjectVo.isUnderConstruction());
                                                                                       if(_loc4_ || _loc2_)
                                                                                       {
                                                                                          addr01b2:
                                                                                          var _temp_23:* = §§pop();
                                                                                          §§push(_temp_23);
                                                                                          §§push(_temp_23);
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             addr01b9:
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(_loc4_ || param1)
                                                                                                {
                                                                                                   §§pop();
                                                                                                   if(_loc4_ || Boolean(this))
                                                                                                   {
                                                                                                      addr01da:
                                                                                                      §§push(_billboardObjectVo.isConnectedToStreet);
                                                                                                      if(_loc4_ || param1)
                                                                                                      {
                                                                                                         addr01ef:
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            if(_loc4_)
                                                                                                            {
                                                                                                               addr01f9:
                                                                                                               this._educationIsIdle = true;
                                                                                                               if(!(_loc3_ && param1))
                                                                                                               {
                                                                                                                  §§goto(addr020b);
                                                                                                               }
                                                                                                               §§goto(addr0253);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr0217);
                                                                                                      }
                                                                                                      §§goto(addr022f);
                                                                                                   }
                                                                                                   §§goto(addr020b);
                                                                                                }
                                                                                                §§goto(addr024c);
                                                                                             }
                                                                                             §§goto(addr01ef);
                                                                                          }
                                                                                          §§goto(addr0230);
                                                                                       }
                                                                                       §§goto(addr0265);
                                                                                    }
                                                                                    §§goto(addr0217);
                                                                                 }
                                                                                 §§goto(addr022f);
                                                                              }
                                                                              §§goto(addr01b2);
                                                                           }
                                                                           §§goto(addr0230);
                                                                        }
                                                                        §§goto(addr0196);
                                                                     }
                                                                     §§goto(addr017e);
                                                                  }
                                                               }
                                                               §§goto(addr017e);
                                                            }
                                                            §§goto(addr01da);
                                                         }
                                                         addr024c:
                                                         §§pop();
                                                         if(_loc4_)
                                                         {
                                                            addr0266:
                                                            addr0253:
                                                            §§push(this._educationIsIdle);
                                                            if(_loc4_ || param1)
                                                            {
                                                               addr0265:
                                                               §§push(!§§pop());
                                                            }
                                                            if(§§pop())
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  addr026f:
                                                                  super.invalidateIconStateManager(param1);
                                                               }
                                                            }
                                                         }
                                                         return;
                                                      }
                                                      §§goto(addr0134);
                                                   }
                                                   §§goto(addr01b9);
                                                }
                                                §§goto(addr0134);
                                             }
                                             §§goto(addr0114);
                                          }
                                          §§goto(addr0177);
                                       }
                                       §§goto(addr00f5);
                                    }
                                    §§goto(addr01b9);
                                 }
                                 §§goto(addr0106);
                              }
                              §§goto(addr0266);
                           }
                           §§goto(addr01f9);
                        }
                        §§goto(addr0253);
                     }
                     §§goto(addr0070);
                  }
               }
               §§goto(addr0051);
            }
            §§goto(addr003c);
         }
         §§goto(addr0070);
      }
      
      override protected function setIcon() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Sprite = null;
         if(!_loc3_)
         {
            clear(this._educationIcon);
            if(_loc2_ || _loc2_)
            {
               §§push(_billboardObjectVo.currentMode == "");
               if(_loc2_ || Boolean(this))
               {
                  var _temp_3:* = §§pop();
                  §§push(_temp_3);
                  if(_temp_3)
                  {
                     if(!_loc3_)
                     {
                        §§pop();
                        if(_loc2_)
                        {
                           §§push(_billboardObjectVo.hideIconsForMoveMode);
                           if(!_loc3_)
                           {
                              addr0064:
                              if(§§pop())
                              {
                                 if(_loc2_)
                                 {
                                    addr006d:
                                    super.checkGroundRestrictions();
                                    if(_loc2_ || Boolean(_loc1_))
                                    {
                                       addr007f:
                                       super.checkBlockedByGround();
                                       if(_loc2_)
                                       {
                                          addr0089:
                                          super.checkConnected();
                                          if(_loc2_ || _loc3_)
                                          {
                                             super.setIcon();
                                             if(!_loc3_)
                                             {
                                                _iconContainer.visible = true;
                                                if(_loc2_ || Boolean(_loc1_))
                                                {
                                                   return;
                                                }
                                                addr00c6:
                                                §§push(this._educationIsDone);
                                                if(_loc2_)
                                                {
                                                   addr00dc:
                                                   if(§§pop())
                                                   {
                                                      if(!(_loc3_ && _loc2_))
                                                      {
                                                         addr00ed:
                                                         this._educationIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"education_finished",true));
                                                         if(!_loc3_)
                                                         {
                                                            _loc1_ = this._educationIcon;
                                                         }
                                                         else
                                                         {
                                                            addr012c:
                                                            this._educationIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"education_idle",true));
                                                            addr0146:
                                                            _loc1_ = this._educationIcon;
                                                         }
                                                         do
                                                         {
                                                            if(_iconContainer.numChildren)
                                                            {
                                                               continue;
                                                            }
                                                            if(!(_loc3_ && Boolean(this)))
                                                            {
                                                               if(_loc1_ != null)
                                                               {
                                                                  if(_loc3_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  _currentIcon = _loc1_;
                                                                  if(_loc2_ || _loc3_)
                                                                  {
                                                                     _iconContainer.addChild(_loc1_);
                                                                     if(!(_loc3_ && Boolean(this)))
                                                                     {
                                                                        break;
                                                                     }
                                                                     addr01c6:
                                                                     _iconContainer.mouseEnabled = true;
                                                                     if(_loc3_)
                                                                     {
                                                                     }
                                                                  }
                                                                  addr01e0:
                                                                  super.checkContainerPosition();
                                                               }
                                                               else
                                                               {
                                                                  super.setIcon();
                                                                  if(!_loc3_)
                                                                  {
                                                                     §§goto(addr01e0);
                                                                  }
                                                               }
                                                               return;
                                                            }
                                                            §§goto(addr01e0);
                                                         }
                                                         while(_iconContainer.removeChildAt(0), !_loc3_);
                                                         
                                                         if(!_billboardObjectVo.userInteractionLocked)
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               §§goto(addr01c6);
                                                            }
                                                         }
                                                         §§goto(addr01e0);
                                                         addr0160:
                                                      }
                                                      §§goto(addr0146);
                                                   }
                                                   else
                                                   {
                                                      addr011b:
                                                      if(this._educationIsIdle)
                                                      {
                                                         if(_loc2_ || Boolean(_loc1_))
                                                         {
                                                            §§goto(addr012c);
                                                         }
                                                         §§goto(addr0146);
                                                      }
                                                   }
                                                   §§goto(addr0160);
                                                }
                                                §§goto(addr011b);
                                             }
                                             §§goto(addr00ed);
                                          }
                                          §§goto(addr012c);
                                       }
                                       §§goto(addr0146);
                                    }
                                 }
                                 §§goto(addr0089);
                              }
                              §§goto(addr00c6);
                           }
                           §§goto(addr011b);
                        }
                        §§goto(addr007f);
                     }
                     §§goto(addr011b);
                  }
                  §§goto(addr0064);
               }
               §§goto(addr00dc);
            }
            §§goto(addr012c);
         }
         §§goto(addr006d);
      }
   }
}

