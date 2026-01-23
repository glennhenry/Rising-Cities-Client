package net.bigpoint.cityrama.view.friendBook.ui.components
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.model.friends.vo.CenterItemFriendDataVo;
   import net.bigpoint.cityrama.view.common.components.DynamicImageButton;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   public class FriendDetailsCenterComponent extends Group
   {
      
      private var _1161660680centerItem:LargeDetailFriendComponent;
      
      private var _66047092scrollLeft:DynamicImageButton;
      
      private var _2053120847scrollRight:DynamicImageButton;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:CenterItemFriendDataVo;
      
      private var _dataIsDirty:Boolean = false;
      
      public function FriendDetailsCenterComponent()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
            if(!_loc2_)
            {
               mx_internal::_document = this;
               addr001d:
               if(!_loc2_)
               {
                  this.width = 270;
                  if(_loc1_ || _loc2_)
                  {
                     addr0056:
                     this.mxmlContent = [this._FriendDetailsCenterComponent_HGroup1_c(),this._FriendDetailsCenterComponent_VGroup1_c(),this._FriendDetailsCenterComponent_VGroup2_c()];
                  }
                  §§goto(addr006d);
               }
               §§goto(addr0056);
            }
            addr006d:
            return;
         }
         §§goto(addr001d);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            super.moduleFactory = param1;
            if(_loc3_ || _loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!(_loc2_ && _loc3_))
                  {
                     return;
                  }
               }
               else
               {
                  addr006d:
                  this.__moduleFactoryInitialized = true;
               }
               §§goto(addr0073);
            }
            §§goto(addr006d);
         }
         addr0073:
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super.initialize();
         }
      }
      
      public function set data(param1:CenterItemFriendDataVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            if(RandomUtilities.isUnEqual(param1,this._data))
            {
               if(_loc2_ || _loc2_)
               {
                  §§push(this.centerItem);
                  if(_loc2_ || Boolean(param1))
                  {
                     §§pop().showBuyButton = param1.showButton;
                     if(!(_loc3_ && Boolean(this)))
                     {
                        §§push(this.centerItem);
                        if(_loc2_ || _loc3_)
                        {
                           §§pop().buttonInfos = param1;
                           if(_loc2_)
                           {
                              addr0097:
                              this.centerItem.data = param1.friendVO;
                              addr0093:
                              if(!_loc3_)
                              {
                                 this._data = param1;
                                 if(!_loc3_)
                                 {
                                    addr00ac:
                                    this._dataIsDirty = true;
                                    if(!_loc3_)
                                    {
                                       addr00b6:
                                       invalidateProperties();
                                    }
                                 }
                                 §§goto(addr00bb);
                              }
                              §§goto(addr00ac);
                           }
                           §§goto(addr00b6);
                        }
                        §§goto(addr0097);
                     }
                     §§goto(addr00b6);
                  }
                  §§goto(addr0097);
               }
               §§goto(addr0093);
            }
            addr00bb:
            return;
         }
         §§goto(addr00ac);
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            super.commitProperties();
            if(!_loc2_)
            {
               if(this._data)
               {
                  if(!_loc2_)
                  {
                     this.centerItem.showBuyButton = this._data.showButton;
                     if(_loc1_)
                     {
                        if(this._dataIsDirty)
                        {
                           if(!(_loc2_ && _loc1_))
                           {
                              addr0070:
                              this._dataIsDirty = false;
                              if(_loc1_)
                              {
                                 addr007a:
                                 this.setToolTip();
                              }
                              §§goto(addr0080);
                           }
                           §§goto(addr007a);
                        }
                        §§goto(addr0080);
                     }
                  }
                  §§goto(addr0070);
               }
            }
            addr0080:
            return;
         }
         §§goto(addr007a);
      }
      
      private function handleRight() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            dispatchEvent(new Event("right",true));
         }
      }
      
      private function handleLeft() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            dispatchEvent(new Event("left",true));
         }
      }
      
      private function setToolTip() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            this.scrollLeft.toolTip = LocaUtils.getString("rcl.tooltips.friendlist","rcl.tooltips.friendlist.pending.previous");
            if(!_loc1_)
            {
               this.scrollRight.toolTip = LocaUtils.getString("rcl.tooltips.friendlist","rcl.tooltips.friendlist.pending.next");
            }
         }
      }
      
      private function _FriendDetailsCenterComponent_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || _loc3_)
         {
            _loc1_.verticalAlign = "middle";
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.horizontalAlign = "center";
               if(_loc3_ || _loc2_)
               {
                  _loc1_.percentWidth = 100;
                  if(_loc3_)
                  {
                     addr0061:
                     _loc1_.percentHeight = 100;
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        §§goto(addr007e);
                     }
                     §§goto(addr009a);
                  }
                  addr007e:
                  _loc1_.mxmlContent = [this._FriendDetailsCenterComponent_LargeDetailFriendComponent1_i()];
                  if(!_loc2_)
                  {
                     addr008e:
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           addr009a:
                           _loc1_.document = this;
                        }
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr009a);
            }
            §§goto(addr0061);
         }
         §§goto(addr008e);
      }
      
      private function _FriendDetailsCenterComponent_LargeDetailFriendComponent1_i() : LargeDetailFriendComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LargeDetailFriendComponent = new LargeDetailFriendComponent();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.verticalCenter = 0;
            if(!_loc3_)
            {
               addr0032:
               _loc1_.horizontalCenter = 0;
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.id = "centerItem";
                  if(!_loc3_)
                  {
                     addr005d:
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || _loc3_)
                        {
                           §§goto(addr007d);
                        }
                        §§goto(addr0098);
                     }
                     §§goto(addr0086);
                  }
                  addr007d:
                  _loc1_.document = this;
                  if(_loc2_)
                  {
                     addr0086:
                     this.centerItem = _loc1_;
                     if(!(_loc3_ && Boolean(this)))
                     {
                        addr0098:
                        BindingManager.executeBindings(this,"centerItem",this.centerItem);
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr005d);
            }
            §§goto(addr0086);
         }
         §§goto(addr0032);
      }
      
      private function _FriendDetailsCenterComponent_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!_loc2_)
         {
            _loc1_.horizontalAlign = "center";
            if(_loc3_)
            {
               _loc1_.percentHeight = 100;
               if(_loc3_)
               {
                  _loc1_.verticalAlign = "middle";
                  if(!_loc2_)
                  {
                     _loc1_.width = 41;
                     addr003f:
                     if(_loc3_ || _loc2_)
                     {
                        addr005e:
                        _loc1_.left = -2;
                        if(_loc3_ || _loc3_)
                        {
                           _loc1_.mxmlContent = [this._FriendDetailsCenterComponent_DynamicImageButton1_i(),this._FriendDetailsCenterComponent_Group2_c()];
                           if(!_loc2_)
                           {
                              addr0092:
                              if(!_loc1_.document)
                              {
                                 if(_loc3_ || _loc3_)
                                 {
                                    addr00a6:
                                    _loc1_.document = this;
                                 }
                              }
                           }
                           §§goto(addr00aa);
                        }
                        §§goto(addr0092);
                     }
                     §§goto(addr00a6);
                  }
                  addr00aa:
                  return _loc1_;
               }
               §§goto(addr003f);
            }
         }
         §§goto(addr005e);
      }
      
      private function _FriendDetailsCenterComponent_DynamicImageButton1_i() : DynamicImageButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(!_loc2_)
         {
            _loc1_.styleName = "listLeft";
            if(_loc3_)
            {
               _loc1_.addEventListener("click",this.__scrollLeft_click);
               if(!_loc2_)
               {
                  _loc1_.id = "scrollLeft";
                  if(!_loc2_)
                  {
                     addr0055:
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           addr0076:
                           _loc1_.document = this;
                           if(_loc3_)
                           {
                              addr007f:
                              this.scrollLeft = _loc1_;
                              if(!_loc2_)
                              {
                                 BindingManager.executeBindings(this,"scrollLeft",this.scrollLeft);
                              }
                           }
                        }
                        return _loc1_;
                     }
                     §§goto(addr007f);
                  }
                  §§goto(addr0076);
               }
            }
         }
         §§goto(addr0055);
      }
      
      public function __scrollLeft_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.handleLeft();
         }
      }
      
      private function _FriendDetailsCenterComponent_Group2_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.height = 40;
            if(!_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     _loc1_.document = this;
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _FriendDetailsCenterComponent_VGroup2_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!_loc3_)
         {
            _loc1_.horizontalAlign = "center";
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.right = -1.5;
               if(!_loc3_)
               {
                  _loc1_.width = 41;
                  if(_loc2_)
                  {
                     _loc1_.percentHeight = 100;
                     if(!(_loc3_ && _loc3_))
                     {
                        §§goto(addr0063);
                     }
                     §§goto(addr00a4);
                  }
               }
            }
            §§goto(addr007a);
         }
         addr0063:
         _loc1_.verticalAlign = "middle";
         if(_loc2_)
         {
            addr007a:
            _loc1_.mxmlContent = [this._FriendDetailsCenterComponent_DynamicImageButton2_i(),this._FriendDetailsCenterComponent_Group3_c()];
            if(!(_loc3_ && _loc2_))
            {
               §§goto(addr0098);
            }
            §§goto(addr00a4);
         }
         addr0098:
         if(!_loc1_.document)
         {
            if(_loc2_)
            {
               addr00a4:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _FriendDetailsCenterComponent_DynamicImageButton2_i() : DynamicImageButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(_loc2_)
         {
            _loc1_.styleName = "listRight";
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.addEventListener("click",this.__scrollRight_click);
               addr0033:
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.id = "scrollRight";
                  if(_loc2_ || _loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           _loc1_.document = this;
                           if(!_loc3_)
                           {
                              §§goto(addr008a);
                           }
                        }
                        §§goto(addr0094);
                     }
                     addr008a:
                     this.scrollRight = _loc1_;
                     if(_loc2_)
                     {
                        addr0094:
                        BindingManager.executeBindings(this,"scrollRight",this.scrollRight);
                     }
                  }
                  §§goto(addr00a1);
               }
               §§goto(addr0094);
            }
            addr00a1:
            return _loc1_;
         }
         §§goto(addr0033);
      }
      
      public function __scrollRight_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            this.handleRight();
         }
      }
      
      private function _FriendDetailsCenterComponent_Group3_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.height = 40;
            if(!_loc2_)
            {
               if(!_loc1_.document)
               {
                  if(!_loc2_)
                  {
                     addr0046:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0046);
      }
      
      [Bindable(event="propertyChange")]
      public function get centerItem() : LargeDetailFriendComponent
      {
         return this._1161660680centerItem;
      }
      
      public function set centerItem(param1:LargeDetailFriendComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1161660680centerItem;
         if(_loc4_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1161660680centerItem = param1;
                  if(_loc4_ || Boolean(param1))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"centerItem",_loc2_,param1));
                        }
                     }
                     §§goto(addr007d);
                  }
               }
               §§goto(addr006e);
            }
            addr007d:
            return;
         }
         §§goto(addr006e);
      }
      
      [Bindable(event="propertyChange")]
      public function get scrollLeft() : DynamicImageButton
      {
         return this._66047092scrollLeft;
      }
      
      public function set scrollLeft(param1:DynamicImageButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._66047092scrollLeft;
         if(!(_loc3_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._66047092scrollLeft = param1;
                  addr0044:
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"scrollLeft",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0044);
      }
      
      [Bindable(event="propertyChange")]
      public function get scrollRight() : DynamicImageButton
      {
         return this._2053120847scrollRight;
      }
      
      public function set scrollRight(param1:DynamicImageButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._2053120847scrollRight;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this._2053120847scrollRight = param1;
                  if(_loc3_)
                  {
                     addr0058:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0067:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"scrollRight",_loc2_,param1));
                        }
                     }
                     §§goto(addr0076);
                  }
                  §§goto(addr0067);
               }
            }
            addr0076:
            return;
         }
         §§goto(addr0058);
      }
   }
}

