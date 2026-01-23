package net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers
{
   import com.greensock.plugins.TransformAroundCenterPlugin;
   import com.greensock.plugins.TweenPlugin;
   import flash.display.Sprite;
   import net.bigpoint.cityrama.model.field.vo.BridgeFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.PlayfieldSwitchFieldObjectVo;
   import net.bigpoint.cityrama.model.horizon.vo.HorizionSettingsVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.SmartObjectContainer;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IIcondataVo;
   import net.bigpoint.util.RisingBitmap;
   
   public class BridgeIconManager extends IconStateManager
   {
      
      private var _bridgeDataVo:BridgeFieldObjectVo;
      
      private var _repairMeIcon:Sprite;
      
      private var _switchToCoastalIcon:Sprite;
      
      private var _switchToMainIcon:Sprite;
      
      public function BridgeIconManager()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            this._repairMeIcon = new Sprite();
            if(!_loc2_)
            {
               this._switchToCoastalIcon = new Sprite();
               if(_loc1_)
               {
                  §§goto(addr0043);
               }
               §§goto(addr0051);
            }
            addr0043:
            this._switchToMainIcon = new Sprite();
            if(!_loc2_)
            {
               addr0051:
               super();
            }
            return;
         }
         §§goto(addr0051);
      }
      
      override public function prepareIconStateManager(param1:IIcondataVo, param2:Sprite, param3:SmartObjectContainer) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(!_loc5_)
         {
            TweenPlugin.activate([TransformAroundCenterPlugin]);
            if(!_loc5_)
            {
               addr002e:
               this._bridgeDataVo = param1 as BridgeFieldObjectVo;
               if(_loc4_)
               {
                  _iconData = param1;
                  if(_loc4_ || Boolean(param3))
                  {
                     _iconContainer = param2;
                     if(!_loc5_)
                     {
                        _smartObjectContainer = param3;
                        if(_loc4_)
                        {
                           _smartObjectContainer.addEventListener(SmartObjectContainer.INVALIDATED,changeContainerHeight);
                           if(!_loc5_)
                           {
                              addr0099:
                              this.prepIcons();
                              if(!_loc5_)
                              {
                                 §§goto(addr00a5);
                              }
                           }
                           §§goto(addr00b8);
                        }
                        §§goto(addr0099);
                     }
                     addr00a5:
                     this.invalidateIconStateManager();
                     if(!(_loc5_ && Boolean(param1)))
                     {
                        addr00b8:
                        this.checkContainerPosition();
                     }
                     §§goto(addr00be);
                  }
                  §§goto(addr00b8);
               }
               §§goto(addr0099);
            }
            addr00be:
            return;
         }
         §§goto(addr002e);
      }
      
      override protected function checkContainerPosition() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §§push(this._bridgeDataVo);
            if(!_loc2_)
            {
               if(§§pop().currentPlayfieldId == HorizionSettingsVo.CITY_PLAYFIELD_ID)
               {
                  if(!_loc2_)
                  {
                     addr0030:
                     _iconContainer.x = -266;
                     if(!(_loc2_ && _loc1_))
                     {
                        _iconContainer.y = -100;
                        if(!(_loc1_ || _loc2_))
                        {
                           addr008a:
                           _iconContainer.x = 154;
                           if(_loc1_)
                           {
                              _iconContainer.y = -340;
                           }
                        }
                     }
                  }
               }
               else
               {
                  addr0078:
                  if(this._bridgeDataVo.currentPlayfieldId == HorizionSettingsVo.COASTAL_PLAYFIELD_ID)
                  {
                     if(_loc1_)
                     {
                        §§goto(addr008a);
                     }
                  }
               }
               return;
            }
            §§goto(addr0078);
         }
         §§goto(addr0030);
      }
      
      override public function invalidateIconStateManager(param1:Boolean = false) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            §§push(!useIcons());
            if(_loc3_)
            {
               var _temp_3:* = §§pop();
               §§push(_temp_3);
               if(!_temp_3)
               {
                  if(_loc3_ || _loc3_)
                  {
                     addr0040:
                     §§pop();
                     if(_loc3_)
                     {
                        addr004e:
                        addr0046:
                        if(_iconData.userInteractionLocked)
                        {
                           while(true)
                           {
                              if(!_iconContainer.numChildren)
                              {
                                 if(!(_loc3_ || _loc2_))
                                 {
                                    addr009f:
                                    if(!_iconData.hideIconsForMoveMode)
                                    {
                                       if(!_loc2_)
                                       {
                                          _isDirty = true;
                                          if(!(_loc2_ && _loc3_))
                                          {
                                             _iconContainer.visible = true;
                                             if(!_loc2_)
                                             {
                                                this.setIcon();
                                                if(_loc3_ || _loc3_)
                                                {
                                                }
                                             }
                                          }
                                          else
                                          {
                                             addr00fe:
                                             _iconContainer.visible = false;
                                             if(!(_loc2_ && Boolean(this)))
                                             {
                                                addr0111:
                                                this.setIcon();
                                             }
                                          }
                                       }
                                       return;
                                    }
                                    _isDirty = true;
                                    if(_loc3_)
                                    {
                                       §§goto(addr00fe);
                                    }
                                    §§goto(addr0111);
                                 }
                              }
                              else
                              {
                                 _iconContainer.removeChildAt(0);
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    continue;
                                 }
                              }
                              return;
                           }
                           addr006d:
                        }
                        §§goto(addr009f);
                     }
                     §§goto(addr006d);
                  }
               }
               §§goto(addr004e);
            }
            §§goto(addr0040);
         }
         §§goto(addr0046);
      }
      
      override protected function setIcon() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc1_:Sprite = null;
         §§push(this._bridgeDataVo);
         loop0:
         while(true)
         {
            var _loc2_:* = §§pop().state;
            if(_loc3_ || Boolean(_loc2_))
            {
               §§push(PlayfieldSwitchFieldObjectVo.STATE_DONE);
               if(!_loc4_)
               {
                  if(§§pop() === _loc2_)
                  {
                     if(_loc3_)
                     {
                        §§push(0);
                        if(_loc3_ || Boolean(this))
                        {
                        }
                     }
                     else
                     {
                        addr011e:
                        §§push(2);
                        if(_loc3_ || Boolean(_loc2_))
                        {
                        }
                     }
                     addr013d:
                     switch(§§pop())
                     {
                        case 0:
                           §§push(this._bridgeDataVo);
                           if(!_loc4_)
                           {
                              if(§§pop().currentPlayfieldId == HorizionSettingsVo.CITY_PLAYFIELD_ID)
                              {
                                 if(_loc3_)
                                 {
                                    _loc1_ = this._switchToCoastalIcon;
                                    if(!(_loc4_ && Boolean(this)))
                                    {
                                       break;
                                    }
                                    addr0170:
                                    _iconContainer.addChild(_loc1_);
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       addr01a5:
                                       _iconContainer.mouseEnabled = _currentIcon != null;
                                       if(!_loc4_)
                                       {
                                          addr01b7:
                                          _isDirty = false;
                                       }
                                    }
                                    break loop0;
                                 }
                                 break;
                              }
                              §§push(this._bridgeDataVo);
                              if(!(_loc4_ && Boolean(_loc1_)))
                              {
                                 if(§§pop().currentPlayfieldId == HorizionSettingsVo.COASTAL_PLAYFIELD_ID)
                                 {
                                    if(!_loc4_)
                                    {
                                       _loc1_ = this._switchToMainIcon;
                                    }
                                 }
                                 break;
                              }
                           }
                           continue;
                        case 1:
                           _loc1_ = this._repairMeIcon;
                           break;
                        case 2:
                        default:
                           _loc1_ = null;
                     }
                     if(_loc1_ != null)
                     {
                        if(!(_loc3_ || Boolean(this)))
                        {
                           break;
                        }
                        _currentIcon = _loc1_;
                        if(!_loc4_)
                        {
                           §§goto(addr0170);
                        }
                        §§goto(addr01b7);
                     }
                     else
                     {
                        _currentIcon = null;
                        if(_loc4_)
                        {
                           break;
                        }
                     }
                     §§goto(addr01a5);
                  }
                  else
                  {
                     §§push(PlayfieldSwitchFieldObjectVo.STATE_IN_PROGRESS);
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        addr00fc:
                        if(§§pop() === _loc2_)
                        {
                           if(!_loc4_)
                           {
                              §§push(1);
                              if(_loc4_)
                              {
                              }
                           }
                           else
                           {
                              §§goto(addr011e);
                           }
                        }
                        else
                        {
                           addr0119:
                           if(PlayfieldSwitchFieldObjectVo.STATE_BLOCKED === _loc2_)
                           {
                              §§goto(addr011e);
                           }
                           else
                           {
                              §§push(3);
                           }
                        }
                        §§goto(addr013d);
                     }
                     §§goto(addr0119);
                  }
               }
               §§goto(addr00fc);
            }
            §§goto(addr011e);
         }
      }
      
      private function prepIcons() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         do
         {
            if(this._switchToMainIcon.numChildren)
            {
               continue;
            }
            if(_loc2_ || _loc1_)
            {
               do
               {
                  if(!this._switchToCoastalIcon.numChildren)
                  {
                     if(!(_loc1_ && _loc1_))
                     {
                        break;
                     }
                     §§goto(addr00ff);
                  }
                  this._switchToCoastalIcon.removeChildAt(0);
               }
               while(_loc2_);
               
               break;
            }
            this._switchToCoastalIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"switchTo101",true));
            if(!(_loc1_ && _loc2_))
            {
               this._switchToMainIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"switchTo100",true));
               if(_loc2_ || _loc1_)
               {
                  addr00ff:
                  this._repairMeIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"repairBridge",true));
               }
               §§goto(addr0119);
            }
            §§goto(addr00ff);
         }
         while(this._switchToMainIcon.removeChildAt(0), !_loc1_);
         
         while(true)
         {
            if(!this._repairMeIcon.numChildren)
            {
               if(_loc2_ || Boolean(this))
               {
                  §§goto(addr00a7);
               }
               §§goto(addr00ff);
            }
            else
            {
               this._repairMeIcon.removeChildAt(0);
               if(_loc2_ || Boolean(this))
               {
                  continue;
               }
            }
            addr0119:
            return;
         }
      }
   }
}

