package net.bigpoint.cityrama.view.quest.ui.components
{
   import com.greensock.TweenMax;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.collections.ArrayCollection;
   import mx.core.ClassFactory;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.view.common.components.ExternalScrollableList;
   import net.bigpoint.cityrama.view.common.components.RewardItemRenderer;
   import net.bigpoint.cityrama.view.quest.ui.skin.BubblePagingListSkin;
   import net.bigpoint.cityrama.view.quest.ui.skin.RewardSlideListSkin;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.List;
   import spark.components.VGroup;
   import spark.events.IndexChangeEvent;
   
   public class RewardSlideComponent extends Group
   {
      
      private static const SLIDE_DURATION:int = 2;
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_ || RewardSlideComponent)
      {
         SLIDE_DURATION = 2;
      }
      
      private var _1302042186pagingList:List;
      
      private var _1690977389rewardList:ExternalScrollableList;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _showPaging:Boolean = true;
      
      private var _data:ArrayCollection;
      
      private var _isDirty:Boolean;
      
      public function RewardSlideComponent()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
            if(_loc2_)
            {
               mx_internal::_document = this;
               if(!_loc1_)
               {
                  addr0030:
                  this.minWidth = 115;
                  if(!(_loc1_ && Boolean(this)))
                  {
                     this.width = 115;
                     if(_loc2_ || _loc2_)
                     {
                        this.maxWidth = 115;
                        if(!(_loc1_ && Boolean(this)))
                        {
                           this.percentHeight = 100;
                           if(!_loc1_)
                           {
                              §§goto(addr0086);
                           }
                           §§goto(addr0096);
                        }
                        addr0086:
                        this.mxmlContent = [this._RewardSlideComponent_VGroup1_c()];
                        if(_loc2_)
                        {
                           addr0096:
                           this.addEventListener("removedFromStage",this.___RewardSlideComponent_Group1_removedFromStage);
                        }
                     }
                     §§goto(addr00a2);
                  }
                  §§goto(addr0096);
               }
            }
            addr00a2:
            return;
         }
         §§goto(addr0030);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            super.moduleFactory = param1;
            if(!_loc2_)
            {
               addr002b:
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_ || Boolean(this))
                  {
                     return;
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
               }
            }
            return;
         }
         §§goto(addr002b);
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            super.initialize();
         }
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super.commitProperties();
            if(_loc1_)
            {
               §§push(Boolean(this._data));
               if(!_loc2_)
               {
                  var _temp_1:* = §§pop();
                  §§push(_temp_1);
                  if(_temp_1)
                  {
                     if(_loc1_ || _loc1_)
                     {
                        §§pop();
                        if(_loc1_ || _loc2_)
                        {
                           §§goto(addr005d);
                        }
                        §§goto(addr00aa);
                     }
                     §§goto(addr005c);
                  }
                  addr005d:
                  §§push(this._isDirty);
                  if(_loc1_)
                  {
                     addr005c:
                     §§push(§§pop());
                  }
                  if(§§pop())
                  {
                     if(_loc1_)
                     {
                        this._isDirty = false;
                        if(_loc1_ || _loc1_)
                        {
                           this.pagingList.dataProvider = this._data;
                           addr0078:
                           if(_loc1_ || _loc2_)
                           {
                              this.rewardList.dataProvider = this._data;
                              if(_loc1_)
                              {
                                 addr00aa:
                                 TweenMax.delayedCall(SLIDE_DURATION,this.changeSlide);
                              }
                           }
                        }
                        §§goto(addr00b7);
                     }
                     §§goto(addr0078);
                  }
                  §§goto(addr00b7);
               }
               §§goto(addr005c);
            }
            §§goto(addr0078);
         }
         addr00b7:
      }
      
      private function handlePagingChanged(param1:IndexChangeEvent = null) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            TweenMax.killDelayedCallsTo(this.changeSlide);
            if(_loc2_ || _loc3_)
            {
               this.rewardList.scrollToPage(this.pagingList.selectedIndex);
               if(!_loc3_)
               {
                  addr004e:
                  TweenMax.delayedCall(SLIDE_DURATION,this.changeSlide);
               }
            }
            return;
         }
         §§goto(addr004e);
      }
      
      private function changeSlide() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            if(this.pagingList.selectedIndex < this._data.length - 1)
            {
               if(_loc3_)
               {
                  var _loc1_:* = this.pagingList;
                  var _loc2_:* = _loc1_.selectedIndex + 1;
                  if(!_loc4_)
                  {
                     _loc1_.selectedIndex = _loc2_;
                  }
                  if(_loc3_ || _loc3_)
                  {
                     addr007f:
                     this.handlePagingChanged();
                  }
                  §§goto(addr0085);
               }
               §§goto(addr007f);
            }
            else
            {
               this.pagingList.selectedIndex = 0;
               if(_loc3_)
               {
                  §§goto(addr007f);
               }
            }
            addr0085:
            return;
         }
         §§goto(addr007f);
      }
      
      public function set data(param1:ArrayCollection) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            if(RandomUtilities.isUnEqual(param1,this._data))
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  this._data = param1;
                  if(_loc2_)
                  {
                     addr0048:
                     this._isDirty = true;
                     if(!_loc3_)
                     {
                        addr0052:
                        invalidateProperties();
                     }
                  }
                  §§goto(addr0057);
               }
               §§goto(addr0048);
            }
            addr0057:
            return;
         }
         §§goto(addr0052);
      }
      
      private function handleRemoved() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            TweenMax.killDelayedCallsTo(this.changeSlide);
         }
      }
      
      public function set showPaging(param1:Boolean) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_ || param1)
         {
            this._showPaging = param1;
            if(_loc3_ || _loc2_)
            {
               addr003e:
               this.pagingList.includeInLayout = this.pagingList.visible = this._showPaging;
            }
            return;
         }
         §§goto(addr003e);
      }
      
      private function handleOver() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            TweenMax.killDelayedCallsTo(this.changeSlide);
         }
      }
      
      private function handleOut() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            TweenMax.delayedCall(SLIDE_DURATION,this.changeSlide);
         }
      }
      
      private function _RewardSlideComponent_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_ || _loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               _loc1_.percentHeight = 100;
               if(!_loc3_)
               {
                  _loc1_.verticalAlign = "top";
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     addr0058:
                     _loc1_.horizontalAlign = "center";
                     if(_loc2_)
                     {
                        _loc1_.gap = -8;
                        if(!(_loc3_ && _loc3_))
                        {
                           _loc1_.mxmlContent = [this._RewardSlideComponent_ExternalScrollableList1_i(),this._RewardSlideComponent_List1_i()];
                           if(!(_loc3_ && _loc2_))
                           {
                              §§goto(addr009e);
                           }
                           §§goto(addr00b2);
                        }
                        §§goto(addr009e);
                     }
                     §§goto(addr00b2);
                  }
                  addr009e:
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && _loc2_))
                     {
                        addr00b2:
                        _loc1_.document = this;
                     }
                  }
                  return _loc1_;
               }
            }
            §§goto(addr00b2);
         }
         §§goto(addr0058);
      }
      
      private function _RewardSlideComponent_ExternalScrollableList1_i() : ExternalScrollableList
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ExternalScrollableList = new ExternalScrollableList();
         if(!_loc3_)
         {
            _loc1_.itemRenderer = this._RewardSlideComponent_ClassFactory1_c();
            if(_loc2_ || _loc3_)
            {
               _loc1_.percentWidth = 100;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  addr004b:
                  _loc1_.setStyle("skinClass",RewardSlideListSkin);
                  if(_loc2_ || _loc2_)
                  {
                     _loc1_.addEventListener("rollOver",this.__rewardList_rollOver);
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        _loc1_.addEventListener("rollOut",this.__rewardList_rollOut);
                        if(!(_loc3_ && _loc2_))
                        {
                           addr00a1:
                           _loc1_.id = "rewardList";
                           if(!(_loc3_ && Boolean(this)))
                           {
                              if(!_loc1_.document)
                              {
                                 if(!_loc3_)
                                 {
                                    addr00ce:
                                    _loc1_.document = this;
                                    if(_loc2_ || Boolean(_loc1_))
                                    {
                                       addr00df:
                                       this.rewardList = _loc1_;
                                       if(!_loc3_)
                                       {
                                          addr00e9:
                                          BindingManager.executeBindings(this,"rewardList",this.rewardList);
                                       }
                                       §§goto(addr00f6);
                                    }
                                    §§goto(addr00e9);
                                 }
                                 §§goto(addr00f6);
                              }
                           }
                           §§goto(addr00df);
                        }
                        §§goto(addr00ce);
                     }
                     §§goto(addr00e9);
                  }
               }
               §§goto(addr00a1);
            }
            §§goto(addr004b);
         }
         addr00f6:
         return _loc1_;
      }
      
      private function _RewardSlideComponent_ClassFactory1_c() : ClassFactory
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ClassFactory = new ClassFactory();
         if(!_loc2_)
         {
            _loc1_.generator = RewardItemRenderer;
         }
         return _loc1_;
      }
      
      public function __rewardList_rollOver(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.handleOver();
         }
      }
      
      public function __rewardList_rollOut(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            this.handleOut();
         }
      }
      
      private function _RewardSlideComponent_List1_i() : List
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:List = new List();
         if(_loc2_)
         {
            _loc1_.itemRenderer = this._RewardSlideComponent_ClassFactory2_c();
            if(!_loc3_)
            {
               _loc1_.selectedIndex = 0;
               if(_loc2_ || _loc2_)
               {
                  _loc1_.percentWidth = 100;
                  if(!_loc3_)
                  {
                     addr004a:
                     _loc1_.percentHeight = 100;
                     if(_loc2_ || Boolean(this))
                     {
                        _loc1_.setStyle("skinClass",BubblePagingListSkin);
                        if(_loc2_)
                        {
                           _loc1_.addEventListener("change",this.__pagingList_change);
                           if(!_loc3_)
                           {
                              addr0087:
                              _loc1_.id = "pagingList";
                              if(_loc2_ || Boolean(_loc1_))
                              {
                                 if(!_loc1_.document)
                                 {
                                    if(_loc2_ || _loc2_)
                                    {
                                       addr00b9:
                                       _loc1_.document = this;
                                       if(!_loc3_)
                                       {
                                          §§goto(addr00c2);
                                       }
                                       §§goto(addr00cc);
                                    }
                                 }
                                 addr00c2:
                                 this.pagingList = _loc1_;
                                 if(!_loc3_)
                                 {
                                    addr00cc:
                                    BindingManager.executeBindings(this,"pagingList",this.pagingList);
                                 }
                                 return _loc1_;
                              }
                              §§goto(addr00cc);
                           }
                           §§goto(addr00b9);
                        }
                     }
                     §§goto(addr00cc);
                  }
                  §§goto(addr0087);
               }
               §§goto(addr004a);
            }
            §§goto(addr00cc);
         }
         §§goto(addr00b9);
      }
      
      private function _RewardSlideComponent_ClassFactory2_c() : ClassFactory
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ClassFactory = new ClassFactory();
         if(!_loc2_)
         {
            _loc1_.generator = BubblePagingItemRenderer;
         }
         return _loc1_;
      }
      
      public function __pagingList_change(param1:IndexChangeEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            this.handlePagingChanged(param1);
         }
      }
      
      public function ___RewardSlideComponent_Group1_removedFromStage(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            this.handleRemoved();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pagingList() : List
      {
         return this._1302042186pagingList;
      }
      
      public function set pagingList(param1:List) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1302042186pagingList;
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(this))
               {
                  this._1302042186pagingList = param1;
                  addr0047:
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr0075:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pagingList",_loc2_,param1));
                        }
                     }
                     §§goto(addr0084);
                  }
               }
               §§goto(addr0075);
            }
            addr0084:
            return;
         }
         §§goto(addr0047);
      }
      
      [Bindable(event="propertyChange")]
      public function get rewardList() : ExternalScrollableList
      {
         return this._1690977389rewardList;
      }
      
      public function set rewardList(param1:ExternalScrollableList) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1690977389rewardList;
         if(_loc3_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1690977389rewardList = param1;
                  if(!_loc4_)
                  {
                     addr0057:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0067:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rewardList",_loc2_,param1));
                        }
                     }
                     §§goto(addr0076);
                  }
               }
               §§goto(addr0067);
            }
            addr0076:
            return;
         }
         §§goto(addr0057);
      }
   }
}

