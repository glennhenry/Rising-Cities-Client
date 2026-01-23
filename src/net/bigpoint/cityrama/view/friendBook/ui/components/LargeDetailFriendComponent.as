package net.bigpoint.cityrama.view.friendBook.ui.components
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import net.bigpoint.cityrama.model.architecturalBook.vo.BlueprintVo;
   import net.bigpoint.cityrama.model.friends.vo.CenterItemFriendDataVo;
   import net.bigpoint.cityrama.model.friends.vo.FriendVo;
   import net.bigpoint.cityrama.model.level.vo.MixedItemTypesVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.DynamicPlusButton;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.friendBook.ui.skins.LargeDetailFriendComponentNormalOwnSkin;
   import net.bigpoint.cityrama.view.friendBook.ui.skins.LargeDetailFriendComponentNormalSkin;
   import net.bigpoint.util.LocaUtils;
   import spark.components.Group;
   import spark.components.supportClasses.SkinnableComponent;
   
   public class LargeDetailFriendComponent extends SkinnableComponent
   {
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!_loc1_)
      {
         _skinParts = {
            "image":true,
            "sizeLabel":false,
            "bottomStickerComponent":false,
            "checkmark":false,
            "friendLevelStarComponent":false,
            "itemLabel":false,
            "buyButton":false,
            "backgroundPrint":false
         };
      }
      
      private var _itemIndex:int;
      
      private var _data:Object;
      
      private var _showBottomSticker:Boolean = true;
      
      private var _showBuyButton:Boolean = false;
      
      private var _buttonInfos:CenterItemFriendDataVo;
      
      public var image:BriskImageDynaLib;
      
      public var backgroundPrint:BriskImageDynaLib;
      
      public var bottomStickerComponent:Group;
      
      public var itemLabel:LocaLabel;
      
      public var sizeLabel:LocaLabel;
      
      public var buyButton:DynamicPlusButton;
      
      public var checkmark:BriskImageDynaLib;
      
      public var friendLevelStarComponent:FriendLevelStarComponent;
      
      public function LargeDetailFriendComponent()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public function get itemIndex() : int
      {
         return this._itemIndex;
      }
      
      public function set data(param1:Object) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:FriendVo = null;
         if(_loc4_ || Boolean(this))
         {
            this._data = param1;
            if(_loc4_)
            {
               if(this._data is FriendVo)
               {
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     addr0057:
                     _loc2_ = this._data as FriendVo;
                     if(_loc4_ || Boolean(this))
                     {
                        if(_loc2_.isMe)
                        {
                           if(!(_loc3_ && Boolean(param1)))
                           {
                              addr0092:
                              setStyle("skinClass",LargeDetailFriendComponentNormalOwnSkin);
                              if(_loc3_ && _loc3_)
                              {
                              }
                           }
                        }
                        else
                        {
                           setStyle("skinClass",LargeDetailFriendComponentNormalSkin);
                        }
                        addr00b9:
                        invalidateProperties();
                        §§goto(addr00be);
                     }
                     §§goto(addr0092);
                  }
                  §§goto(addr00be);
               }
               §§goto(addr00b9);
            }
            addr00be:
            return;
         }
         §§goto(addr0057);
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:FriendVo = null;
         if(_loc3_ || _loc3_)
         {
            super.commitProperties();
            if(_loc3_ || Boolean(this))
            {
               if(this._data)
               {
                  if(_loc3_)
                  {
                     if(this._data is FriendVo)
                     {
                        addr005c:
                        _loc1_ = this._data as FriendVo;
                        if(_loc3_)
                        {
                           this.itemLabel.text = _loc1_.name;
                           if(_loc3_)
                           {
                              §§push(this.friendLevelStarComponent);
                              if(!(_loc2_ && _loc3_))
                              {
                                 §§pop().levelLabel.text = String(_loc1_.lvl);
                                 if(!(_loc2_ && Boolean(this)))
                                 {
                                    addr00b9:
                                    this.friendLevelStarComponent.toolTip = LocaUtils.getString("rcl.tooltips.friendlist","rcl.tooltips.friendlist.level");
                                    addr00b5:
                                 }
                                 §§goto(addr00c7);
                              }
                              §§goto(addr00b9);
                           }
                           §§goto(addr00b5);
                        }
                     }
                     §§goto(addr00c7);
                  }
                  §§goto(addr005c);
               }
               addr00c7:
               return;
            }
         }
         §§goto(addr005c);
      }
      
      public function set itemIndex(param1:int) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            if(this._itemIndex != param1)
            {
               if(!(_loc3_ && Boolean(param1)))
               {
                  addr0044:
                  this._itemIndex = param1;
                  if(_loc2_ || _loc2_)
                  {
                     addr0056:
                     invalidateProperties();
                  }
                  §§goto(addr005b);
               }
               §§goto(addr0056);
            }
            addr005b:
            return;
         }
         §§goto(addr0044);
      }
      
      override protected function partAdded(param1:String, param2:Object) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!(_loc3_ && _loc3_))
         {
            super.partAdded(param1,param2);
            if(_loc4_ || _loc3_)
            {
               if(param2 == this.image)
               {
                  if(_loc4_ || Boolean(param2))
                  {
                     §§push(this.image);
                     if(_loc4_ || Boolean(param1))
                     {
                        §§push(false);
                        if(_loc4_ || Boolean(param1))
                        {
                           §§pop().mouseChildren = §§pop();
                           if(_loc4_ || Boolean(this))
                           {
                              addr0086:
                              this.image.mouseEnabled = false;
                              addr0085:
                              if(_loc4_ || Boolean(param2))
                              {
                                 §§goto(addr0097);
                              }
                              §§goto(addr0238);
                           }
                           §§goto(addr017e);
                        }
                        §§goto(addr0086);
                     }
                     §§goto(addr0085);
                  }
                  §§goto(addr01a0);
               }
               addr0097:
               if(param2 == this.sizeLabel)
               {
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     if(this._data)
                     {
                        if(_loc4_ || Boolean(param1))
                        {
                           §§push(this._data is BlueprintVo);
                           if(!(_loc3_ && Boolean(param2)))
                           {
                              if(§§pop())
                              {
                                 if(_loc4_ || Boolean(param2))
                                 {
                                    §§push(this.sizeLabel);
                                    if(!_loc3_)
                                    {
                                       §§push((this._data as BlueprintVo).configObj.sizeX);
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          §§push("x");
                                          if(!_loc3_)
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(_loc4_ || Boolean(this))
                                             {
                                                §§push((this._data as BlueprintVo).configObj.sizeY);
                                                if(_loc4_)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                      §§pop().text = §§pop();
                                                      if(_loc3_)
                                                      {
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr01d2:
                                                      §§pop().text = §§pop();
                                                      if(_loc3_)
                                                      {
                                                      }
                                                   }
                                                   §§goto(addr0309);
                                                }
                                                else
                                                {
                                                   addr01d1:
                                                   §§push(§§pop() + §§pop());
                                                }
                                             }
                                          }
                                          else
                                          {
                                             addr01b5:
                                             §§push(§§pop() + §§pop());
                                             if(!(_loc3_ && Boolean(param1)))
                                             {
                                                §§goto(addr01d1);
                                                §§push((this._data as MixedItemTypesVo).configItem.sizeY);
                                             }
                                          }
                                          §§goto(addr01d2);
                                       }
                                       else
                                       {
                                          addr01b2:
                                          §§push("x");
                                       }
                                       §§goto(addr01b5);
                                    }
                                    else
                                    {
                                       addr01a4:
                                       §§push((this._data as MixedItemTypesVo).configItem.sizeX);
                                    }
                                    §§goto(addr01b2);
                                 }
                                 else
                                 {
                                    addr01ec:
                                    §§push(this.showBottomSticker);
                                    if(_loc4_)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc4_)
                                          {
                                             this.bottomStickerComponent.includeInLayout = true;
                                             if(!(_loc3_ && Boolean(param2)))
                                             {
                                                this.bottomStickerComponent.visible = true;
                                                if(_loc3_)
                                                {
                                                }
                                             }
                                          }
                                          else
                                          {
                                             addr027c:
                                             §§push(this.buyButton);
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                addr028d:
                                                §§push(true);
                                                if(!_loc3_)
                                                {
                                                   §§pop().visible = §§pop();
                                                   if(_loc4_ || Boolean(param2))
                                                   {
                                                      addr02a3:
                                                      §§push(this.buyButton);
                                                      if(_loc4_)
                                                      {
                                                         §§pop().toolTip = getStyle("buyButtonTooltip");
                                                         if(_loc3_ && Boolean(param2))
                                                         {
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr02ec:
                                                         §§push(false);
                                                         if(!(_loc3_ && _loc3_))
                                                         {
                                                            addr02fa:
                                                            §§pop().includeInLayout = §§pop();
                                                            if(_loc4_)
                                                            {
                                                               addr0307:
                                                               this.buyButton.visible = false;
                                                               addr0306:
                                                               addr0302:
                                                            }
                                                            §§goto(addr0309);
                                                         }
                                                         §§goto(addr0307);
                                                      }
                                                   }
                                                   §§goto(addr0309);
                                                }
                                                §§goto(addr02fa);
                                             }
                                             §§goto(addr0306);
                                          }
                                          §§goto(addr0309);
                                       }
                                       else
                                       {
                                          this.bottomStickerComponent.includeInLayout = false;
                                          if(!(_loc3_ && Boolean(this)))
                                          {
                                             addr0238:
                                             this.bottomStickerComponent.visible = false;
                                             if(!_loc4_)
                                             {
                                                §§goto(addr02a3);
                                             }
                                             §§goto(addr0309);
                                          }
                                          else
                                          {
                                             addr0265:
                                             §§push(this.buyButton);
                                             if(!_loc3_)
                                             {
                                                §§push(true);
                                                if(_loc4_)
                                                {
                                                   §§pop().includeInLayout = §§pop();
                                                   if(!_loc3_)
                                                   {
                                                      §§goto(addr027c);
                                                   }
                                                   §§goto(addr0302);
                                                }
                                                §§goto(addr02fa);
                                             }
                                             §§goto(addr028d);
                                          }
                                       }
                                       §§goto(addr028d);
                                    }
                                    else
                                    {
                                       addr025b:
                                       if(§§pop())
                                       {
                                          if(_loc4_)
                                          {
                                             §§goto(addr0265);
                                          }
                                          §§goto(addr027c);
                                       }
                                       else
                                       {
                                          §§push(this.buyButton);
                                          if(_loc4_ || _loc3_)
                                          {
                                             §§goto(addr02ec);
                                          }
                                       }
                                    }
                                    §§goto(addr0306);
                                 }
                              }
                              else
                              {
                                 §§push(this._data is MixedItemTypesVo);
                                 if(_loc4_ || _loc3_)
                                 {
                                    §§goto(addr0174);
                                 }
                              }
                              §§goto(addr025b);
                           }
                           addr0174:
                           if(§§pop())
                           {
                              if(_loc4_)
                              {
                                 addr017e:
                                 if((this._data as MixedItemTypesVo).type == MixedItemTypesVo.PLAYFIELDITEM)
                                 {
                                    if(_loc4_ || Boolean(param2))
                                    {
                                       addr01a0:
                                       §§goto(addr01a4);
                                       §§push(this.sizeLabel);
                                    }
                                    else
                                    {
                                       addr0257:
                                       §§goto(addr025b);
                                       §§push(this.showBuyButton);
                                    }
                                 }
                              }
                           }
                           §§goto(addr0309);
                        }
                     }
                  }
               }
               else if(param2 == this.bottomStickerComponent)
               {
                  if(_loc4_)
                  {
                     §§goto(addr01ec);
                  }
                  §§goto(addr0265);
               }
               else if(param2 == this.buyButton)
               {
                  if(!_loc3_)
                  {
                     §§goto(addr0257);
                  }
                  §§goto(addr0265);
               }
               addr0309:
               return;
            }
            §§goto(addr0238);
         }
         §§goto(addr0302);
      }
      
      private function onButtonClick(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Event = null;
         if(_loc3_)
         {
            if(this._buttonInfos != null)
            {
               if(!_loc4_)
               {
                  addr0041:
                  _loc2_ = new Event(this._buttonInfos.buttonEventString);
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     dispatchEvent(_loc2_);
                  }
               }
            }
            else
            {
               dispatchEvent(new Event("buyPermission"));
            }
            return;
         }
         §§goto(addr0041);
      }
      
      public function get showBottomSticker() : Boolean
      {
         return this._showBottomSticker;
      }
      
      public function set showBottomSticker(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._showBottomSticker = param1;
            if(!_loc2_)
            {
               addr0023:
               invalidateProperties();
            }
            return;
         }
         §§goto(addr0023);
      }
      
      public function get showBuyButton() : Boolean
      {
         return this._showBuyButton;
      }
      
      public function set showBuyButton(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._showBuyButton = param1;
            if(!_loc3_)
            {
               invalidateProperties();
            }
         }
      }
      
      public function set buttonInfos(param1:CenterItemFriendDataVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            this._buttonInfos = param1;
         }
      }
      
      public function get data() : Object
      {
         return this._data;
      }
   }
}

