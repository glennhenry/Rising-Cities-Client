package net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers
{
   import flash.display.Sprite;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.field.vo.PlayfieldSwitchFieldObjectVo;
   import net.bigpoint.cityrama.model.horizon.vo.HorizionSettingsVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.SmartObjectContainer;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IIcondataVo;
   import net.bigpoint.util.RisingBitmap;
   
   public class PlayfieldSwitchFieldObjectIconManager extends IconStateManager
   {
      
      private var _iconDefault:Sprite;
      
      private var _iconInProgress:Sprite;
      
      private var _dataVo:PlayfieldSwitchFieldObjectVo;
      
      public function PlayfieldSwitchFieldObjectIconManager()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            this._iconDefault = new Sprite();
            if(!(_loc2_ && _loc2_))
            {
               this._iconInProgress = new Sprite();
               if(_loc1_)
               {
                  addr0043:
                  super();
               }
               return;
            }
         }
         §§goto(addr0043);
      }
      
      override public function prepareIconStateManager(param1:IIcondataVo, param2:Sprite, param3:SmartObjectContainer) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(_loc5_)
         {
            this._dataVo = param1 as PlayfieldSwitchFieldObjectVo;
            if(_loc5_ || Boolean(this))
            {
               _billboardObjectVo = param1 as BillboardObjectVo;
               if(_loc5_ || Boolean(param3))
               {
                  _iconData = param1;
                  if(_loc5_)
                  {
                     addr0063:
                     _iconContainer = param2;
                     if(!(_loc4_ && Boolean(param1)))
                     {
                        _smartObjectContainer = param3;
                        if(!_loc4_)
                        {
                           _smartObjectContainer.addEventListener(SmartObjectContainer.INVALIDATED,changeContainerHeight);
                           if(_loc5_)
                           {
                              this.prepIcons();
                              if(_loc5_ || Boolean(this))
                              {
                                 §§goto(addr00ba);
                              }
                           }
                        }
                        §§goto(addr00cd);
                     }
                  }
               }
               addr00ba:
               this.invalidateIconStateManager();
               if(!(_loc4_ && Boolean(param3)))
               {
                  addr00cd:
                  this.checkContainerPosition();
               }
               return;
            }
            §§goto(addr0063);
         }
         §§goto(addr00cd);
      }
      
      override protected function checkContainerPosition() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            _iconContainer.x = 0;
            if(_loc1_ || _loc1_)
            {
               addr003b:
               _iconContainer.y = -150;
            }
            return;
         }
         §§goto(addr003b);
      }
      
      override public function invalidateIconStateManager(param1:Boolean = false) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            §§push(!useIcons());
            if(!_loc3_)
            {
               var _temp_1:* = §§pop();
               §§push(_temp_1);
               if(!_temp_1)
               {
                  if(_loc2_ || _loc3_)
                  {
                     addr0036:
                     §§pop();
                     if(_loc2_ || Boolean(this))
                     {
                        addr004c:
                        addr0044:
                        if(_iconData.userInteractionLocked)
                        {
                           while(true)
                           {
                              if(!_iconContainer.numChildren)
                              {
                                 if(!_loc3_)
                                 {
                                    return;
                                 }
                                 §§goto(addr00a2);
                              }
                              _iconContainer.removeChildAt(0);
                              if(_loc2_ || param1)
                              {
                                 continue;
                              }
                              addr008b:
                              if(!_iconData.hideIconsForMoveMode)
                              {
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    addr00a2:
                                    _isDirty = true;
                                    if(!_loc3_)
                                    {
                                       _iconContainer.visible = true;
                                       if(_loc2_ || _loc3_)
                                       {
                                          this.setIcon();
                                          if(!(_loc2_ || Boolean(this)))
                                          {
                                             addr010a:
                                             this.setIcon();
                                          }
                                       }
                                    }
                                    §§goto(addr0110);
                                 }
                                 else
                                 {
                                    addr00f7:
                                    _iconContainer.visible = false;
                                    if(_loc2_ || Boolean(this))
                                    {
                                       §§goto(addr010a);
                                    }
                                 }
                                 addr0110:
                                 return;
                              }
                              _isDirty = true;
                              if(_loc2_ || _loc2_)
                              {
                                 §§goto(addr00f7);
                              }
                              §§goto(addr010a);
                           }
                           addr006b:
                        }
                        §§goto(addr008b);
                     }
                     §§goto(addr006b);
                  }
               }
               §§goto(addr004c);
            }
            §§goto(addr0036);
         }
         §§goto(addr0044);
      }
      
      override protected function setIcon() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc1_:Sprite = null;
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            if(this._dataVo)
            {
               addr0058:
               var _loc2_:* = this._dataVo.state;
               if(!_loc4_)
               {
                  §§push(PlayfieldSwitchFieldObjectVo.STATE_DONE);
                  if(!(_loc4_ && _loc3_))
                  {
                     §§push(_loc2_);
                     if(_loc3_)
                     {
                        if(§§pop() === §§pop())
                        {
                           if(_loc3_)
                           {
                              §§push(0);
                              if(_loc3_ || _loc3_)
                              {
                              }
                           }
                           else
                           {
                              addr00d4:
                              §§push(1);
                              if(_loc3_)
                              {
                              }
                           }
                        }
                        else
                        {
                           §§push(PlayfieldSwitchFieldObjectVo.STATE_BLOCKED);
                           if(!_loc4_)
                           {
                              addr00a8:
                              §§push(_loc2_);
                              if(_loc3_ || Boolean(_loc1_))
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       §§goto(addr00d4);
                                    }
                                    else
                                    {
                                       addr00ea:
                                       §§push(2);
                                       if(_loc3_ || Boolean(_loc1_))
                                       {
                                       }
                                    }
                                    §§goto(addr0109);
                                 }
                                 else
                                 {
                                    §§goto(addr00e6);
                                 }
                              }
                              addr00e6:
                              §§goto(addr00e5);
                           }
                           addr00e5:
                           if(PlayfieldSwitchFieldObjectVo.STATE_IN_PROGRESS === _loc2_)
                           {
                              §§goto(addr00ea);
                           }
                           else
                           {
                              §§push(3);
                           }
                           §§goto(addr0109);
                        }
                        addr0109:
                        switch(§§pop())
                        {
                           case 0:
                              _loc1_ = this._iconDefault;
                              break;
                           case 1:
                              _loc1_ = null;
                              break;
                           case 2:
                              _loc1_ = this._iconInProgress;
                        }
                        §§goto(addr0122);
                     }
                     §§goto(addr00e6);
                  }
                  §§goto(addr00a8);
               }
               §§goto(addr00d4);
            }
            addr0122:
            if(_loc1_ != null)
            {
               if(!(_loc4_ && _loc3_))
               {
                  _currentIcon = _loc1_;
                  if(!_loc4_)
                  {
                     _iconContainer.addChild(_loc1_);
                     if(!(_loc4_ && _loc3_))
                     {
                        §§goto(addr0176);
                     }
                  }
                  §§goto(addr0190);
               }
               §§goto(addr0176);
            }
            else
            {
               _currentIcon = null;
               if(!_loc4_)
               {
                  addr0176:
                  _iconContainer.mouseEnabled = _currentIcon != null;
                  if(!(_loc4_ && Boolean(_loc1_)))
                  {
                     addr0190:
                     _isDirty = false;
                  }
                  §§goto(addr0197);
               }
            }
            addr0197:
            return;
         }
         §§goto(addr0058);
      }
      
      private function prepIcons() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         do
         {
            if(!this._iconDefault.numChildren)
            {
               if(_loc1_ || _loc2_)
               {
               }
               do
               {
                  if(this._iconInProgress.numChildren)
                  {
                     continue;
                  }
                  if(!_loc2_)
                  {
                     §§push(this._dataVo);
                     if(!_loc2_)
                     {
                        if(§§pop() != null)
                        {
                           if(_loc1_)
                           {
                              this._iconDefault.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"switchFrom_" + this._dataVo.currentPlayfieldId + "_to_" + this._dataVo.targetPlayfieldId,true));
                              if(_loc2_)
                              {
                                 break;
                              }
                              addr00bc:
                              if(this._dataVo.currentPlayfieldId == HorizionSettingsVo.CITY_PLAYFIELD_ID)
                              {
                                 if(!_loc2_)
                                 {
                                    break;
                                 }
                              }
                           }
                        }
                        §§goto(addr010b);
                     }
                     §§goto(addr00bc);
                  }
                  §§goto(addr010b);
               }
               while(this._iconInProgress.removeChildAt(0), _loc1_ || _loc1_);
               
               break;
            }
            this._iconDefault.removeChildAt(0);
         }
         while(_loc1_);
         
         this._iconInProgress.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"switchFrom_" + this._dataVo.currentPlayfieldId + "_to_" + this._dataVo.targetPlayfieldId + "_inProgress",true));
         addr010b:
      }
   }
}

