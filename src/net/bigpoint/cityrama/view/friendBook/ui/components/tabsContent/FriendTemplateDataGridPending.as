package net.bigpoint.cityrama.view.friendBook.ui.components.tabsContent
{
   import mx.binding.BindingManager;
   import mx.collections.ArrayCollection;
   import mx.collections.Sort;
   import mx.collections.SortField;
   import mx.core.ClassFactory;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import net.bigpoint.cityrama.model.friends.vo.FriendVo;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.skins.GridSkinFriendBook4;
   import net.bigpoint.cityrama.view.friendBook.ui.components.FriendBookItemRenderer;
   import net.bigpoint.cityrama.view.friendBook.ui.components.GroupList;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.HGroup;
   import spark.components.List;
   
   public class FriendTemplateDataGridPending extends GroupList
   {
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:ArrayCollection;
      
      private var _dataIsDirty:Boolean = false;
      
      public function FriendTemplateDataGridPending()
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
               if(_loc1_ || Boolean(this))
               {
                  this.percentWidth = 100;
                  addr0041:
                  if(_loc1_)
                  {
                     this.percentHeight = 100;
                     if(!_loc2_)
                     {
                        addr005f:
                        this.mxmlContent = [this._FriendTemplateDataGridPending_LocaLabel1_i(),this._FriendTemplateDataGridPending_HGroup1_c()];
                        if(!_loc2_)
                        {
                           addr0075:
                           this.addEventListener("creationComplete",this.___FriendTemplateDataGridPending_GroupList1_creationComplete);
                        }
                     }
                     return;
                  }
                  §§goto(addr005f);
               }
               §§goto(addr0075);
            }
            §§goto(addr0041);
         }
         §§goto(addr005f);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            super.moduleFactory = param1;
            if(_loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_)
                  {
                     §§goto(addr0038);
                  }
               }
               this.__moduleFactoryInitialized = true;
            }
            return;
         }
         addr0038:
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super.initialize();
         }
      }
      
      private function setTooltips() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            flavorText.text = LocaUtils.getString("rcl.booklayer.friendbook","rcl.booklayer.friendbook.inviteOverviewPending_flavor");
            if(_loc2_)
            {
               itemList.setStyle("tooltipScrollLeft",LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.leftArrow"));
               if(_loc2_ || Boolean(this))
               {
                  addr0057:
                  itemList.setStyle("tooltipScrollRight",LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.rightArrow"));
               }
            }
            return;
         }
         §§goto(addr0057);
      }
      
      override public function set data(param1:*) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            if(RandomUtilities.isUnEqual(param1,this._data))
            {
               if(_loc3_ || param1)
               {
                  addr0042:
                  this._data = param1 as ArrayCollection;
                  if(!_loc2_)
                  {
                     this._dataIsDirty = true;
                     if(_loc3_)
                     {
                        addr0059:
                        invalidateProperties();
                     }
                     §§goto(addr005e);
                  }
               }
               §§goto(addr0059);
            }
            addr005e:
            return;
         }
         §§goto(addr0042);
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:int = 0;
         var _loc5_:SortField = null;
         var _loc6_:Sort = null;
         var _loc7_:FriendVo = null;
         if(!_loc8_)
         {
            super.commitProperties();
            if(_loc9_ || Boolean(this))
            {
               §§push(this._dataIsDirty);
               if(_loc9_ || Boolean(_loc2_))
               {
                  §§push(§§pop());
                  if(_loc9_ || Boolean(_loc1_))
                  {
                     var _temp_5:* = §§pop();
                     §§push(_temp_5);
                     if(_temp_5)
                     {
                        if(_loc9_)
                        {
                           addr0079:
                           §§pop();
                           if(!_loc8_)
                           {
                              §§goto(addr0085);
                           }
                           §§goto(addr00aa);
                        }
                     }
                  }
                  addr0085:
                  if(Boolean(this._data))
                  {
                     if(!(_loc8_ && Boolean(_loc2_)))
                     {
                        this._dataIsDirty = false;
                        if(_loc9_ || Boolean(this))
                        {
                           addr00aa:
                           §§push(int(this._data.length));
                           if(_loc9_ || Boolean(_loc3_))
                           {
                              _loc1_ = §§pop();
                              if(_loc9_)
                              {
                                 addr00c6:
                                 §§push(10);
                                 if(!(_loc8_ && Boolean(_loc3_)))
                                 {
                                    _loc2_ = §§pop();
                                    if(_loc9_)
                                    {
                                       §§push(_loc2_);
                                       if(!(_loc8_ && Boolean(_loc3_)))
                                       {
                                          addr00ec:
                                          §§push(int(§§pop() - _loc1_ % _loc2_));
                                          if(!(_loc8_ && Boolean(_loc1_)))
                                          {
                                             addr010a:
                                             _loc3_ = §§pop();
                                             if(_loc9_ || Boolean(_loc2_))
                                             {
                                                addr011b:
                                                _loc4_ = 0;
                                                addr0119:
                                             }
                                             while(_loc4_ < _loc3_)
                                             {
                                                _loc7_ = new FriendVo({
                                                   "id":1,
                                                   "l":1,
                                                   "n":"",
                                                   "t":3,
                                                   "io":1,
                                                   "lld":123,
                                                   "cd":123
                                                });
                                                _loc7_.isEmpty = true;
                                                if(!(_loc8_ && Boolean(_loc2_)))
                                                {
                                                   this._data.addItem(_loc7_);
                                                   if(!(_loc8_ && Boolean(_loc2_)))
                                                   {
                                                      _loc4_++;
                                                   }
                                                }
                                             }
                                             _loc5_ = new SortField();
                                             _loc5_.name = "accountCreatedDate";
                                             if(!_loc8_)
                                             {
                                                _loc5_.numeric = true;
                                                if(!_loc8_)
                                                {
                                                   addr01ac:
                                                   _loc5_.descending = true;
                                                }
                                                _loc6_ = new Sort();
                                                _loc6_.fields = [_loc5_];
                                                if(_loc9_ || Boolean(_loc3_))
                                                {
                                                   this._data.sort = _loc6_;
                                                   if(_loc9_ || Boolean(_loc3_))
                                                   {
                                                      this._data.refresh();
                                                      if(_loc9_)
                                                      {
                                                         itemList.dataProvider = this._data;
                                                         if(!(_loc8_ && Boolean(_loc3_)))
                                                         {
                                                            addr0221:
                                                            itemList.ensureIndexIsVisible(0);
                                                            if(!(_loc8_ && Boolean(_loc1_)))
                                                            {
                                                               addr0238:
                                                               itemList.invalidateProperties();
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr023e);
                                                   }
                                                   §§goto(addr0221);
                                                }
                                                §§goto(addr0238);
                                             }
                                             §§goto(addr01ac);
                                             addr017f:
                                          }
                                       }
                                       §§goto(addr011b);
                                    }
                                    §§goto(addr0119);
                                 }
                                 §§goto(addr010a);
                              }
                              §§goto(addr0119);
                           }
                           §§goto(addr00ec);
                        }
                        §§goto(addr00c6);
                     }
                     §§goto(addr017f);
                  }
                  addr023e:
                  return;
               }
               §§goto(addr0079);
            }
            §§goto(addr0119);
         }
         §§goto(addr00aa);
      }
      
      private function _FriendTemplateDataGridPending_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_)
         {
            _loc1_.width = 700;
            if(_loc2_)
            {
               _loc1_.horizontalCenter = 0;
               if(_loc2_)
               {
                  addr0033:
                  _loc1_.maxDisplayedLines = 2;
                  if(_loc2_ || _loc2_)
                  {
                     addr0051:
                     _loc1_.styleName = "flavorText";
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        addr0064:
                        _loc1_.id = "flavorText";
                        if(_loc2_ || _loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(!_loc3_)
                              {
                                 addr008f:
                                 _loc1_.document = this;
                                 if(_loc2_)
                                 {
                                    §§goto(addr0098);
                                 }
                              }
                              §§goto(addr00a4);
                           }
                           addr0098:
                           flavorText = _loc1_;
                           if(_loc2_)
                           {
                              addr00a4:
                              BindingManager.executeBindings(this,"flavorText",flavorText);
                           }
                           return _loc1_;
                        }
                     }
                  }
                  §§goto(addr008f);
               }
               §§goto(addr0051);
            }
            §§goto(addr0033);
         }
         §§goto(addr0064);
      }
      
      private function _FriendTemplateDataGridPending_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.left = -5;
            if(_loc3_)
            {
               _loc1_.horizontalAlign = "left";
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.verticalAlign = "middle";
                  if(_loc3_)
                  {
                     _loc1_.bottom = -4;
                     if(!(_loc2_ && _loc2_))
                     {
                        _loc1_.gap = 0;
                        if(!_loc2_)
                        {
                           §§goto(addr007b);
                        }
                        §§goto(addr0093);
                     }
                     addr007b:
                     _loc1_.mxmlContent = [this._FriendTemplateDataGridPending_List1_i()];
                     if(_loc3_ || Boolean(this))
                     {
                        addr0093:
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              addr009f:
                              _loc1_.document = this;
                           }
                        }
                     }
                     §§goto(addr00a3);
                  }
                  §§goto(addr009f);
               }
               §§goto(addr0093);
            }
         }
         addr00a3:
         return _loc1_;
      }
      
      private function _FriendTemplateDataGridPending_List1_i() : List
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:List = new List();
         if(!_loc2_)
         {
            _loc1_.itemRenderer = this._FriendTemplateDataGridPending_ClassFactory1_c();
            if(_loc3_)
            {
               _loc1_.height = 350;
               if(_loc3_)
               {
                  _loc1_.width = 740;
                  if(!_loc2_)
                  {
                     _loc1_.setStyle("skinClass",GridSkinFriendBook4);
                     if(!_loc2_)
                     {
                        _loc1_.id = "itemList";
                        if(_loc3_ || Boolean(this))
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc3_)
                              {
                                 addr0088:
                                 _loc1_.document = this;
                                 if(_loc3_)
                                 {
                                    §§goto(addr0091);
                                 }
                                 §§goto(addr009d);
                              }
                           }
                           §§goto(addr0091);
                        }
                        §§goto(addr009d);
                     }
                     addr0091:
                     itemList = _loc1_;
                     if(!_loc2_)
                     {
                        addr009d:
                        BindingManager.executeBindings(this,"itemList",itemList);
                     }
                     §§goto(addr00a9);
                  }
                  §§goto(addr0088);
               }
               §§goto(addr00a9);
            }
            §§goto(addr0091);
         }
         addr00a9:
         return _loc1_;
      }
      
      private function _FriendTemplateDataGridPending_ClassFactory1_c() : ClassFactory
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ClassFactory = new ClassFactory();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.generator = FriendBookItemRenderer;
         }
         return _loc1_;
      }
      
      public function ___FriendTemplateDataGridPending_GroupList1_creationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.setTooltips();
         }
      }
   }
}

