package net.bigpoint.cityrama.view.friendBook.ui.components.tabsContent
{
   import mx.binding.BindingManager;
   import mx.collections.ArrayCollection;
   import mx.core.ClassFactory;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import net.bigpoint.cityrama.model.friends.vo.FriendVo;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.skins.GridSkinFriendBook4;
   import net.bigpoint.cityrama.view.friendBook.ui.components.FriendADDComponent;
   import net.bigpoint.cityrama.view.friendBook.ui.components.FriendBookItemRenderer;
   import net.bigpoint.cityrama.view.friendBook.ui.components.FriendGIFTComponent;
   import net.bigpoint.cityrama.view.friendBook.ui.components.GroupList;
   import net.bigpoint.util.LocaUtils;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.components.VGroup;
   
   public class FriendTemplateDataGrid extends GroupList
   {
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public function FriendTemplateDataGrid()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
            if(_loc1_ || Boolean(this))
            {
               mx_internal::_document = this;
               if(_loc1_ || _loc2_)
               {
                  addr0049:
                  this.percentWidth = 100;
                  if(_loc1_ || Boolean(this))
                  {
                     this.percentHeight = 100;
                     if(!_loc2_)
                     {
                        §§goto(addr006f);
                     }
                  }
               }
               §§goto(addr008d);
            }
            addr006f:
            this.mxmlContent = [this._FriendTemplateDataGrid_LocaLabel1_i(),this._FriendTemplateDataGrid_HGroup1_c()];
            if(_loc1_ || _loc2_)
            {
               addr008d:
               this.addEventListener("creationComplete",this.___FriendTemplateDataGrid_GroupList1_creationComplete);
            }
            return;
         }
         §§goto(addr0049);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            super.moduleFactory = param1;
            if(_loc2_ || Boolean(this))
            {
               §§goto(addr0035);
            }
            §§goto(addr004b);
         }
         addr0035:
         if(this.__moduleFactoryInitialized)
         {
            if(!(_loc3_ && _loc3_))
            {
               addr004b:
               return;
            }
         }
         this.__moduleFactoryInitialized = true;
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super.initialize();
         }
      }
      
      private function setTooltips() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            flavorText.text = LocaUtils.getString("rcl.booklayer.friendbook","rcl.booklayer.friendbook.inviteOverview_flavor");
            if(_loc2_ || _loc2_)
            {
               itemList.setStyle("tooltipScrollLeft",LocaUtils.getString("rcl.tooltips.friendlist","rcl.tooltips.friendlist.overview.previous"));
               if(_loc2_)
               {
                  addr0058:
                  itemList.setStyle("tooltipScrollRight",LocaUtils.getString("rcl.tooltips.friendlist","rcl.tooltips.friendlist.overview.next"));
               }
               return;
            }
         }
         §§goto(addr0058);
      }
      
      override public function set data(param1:*) : void
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc2_:ArrayCollection = null;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:int = 0;
         var _loc7_:FriendVo = null;
         if(!(_loc8_ && Boolean(_loc3_)))
         {
            if(param1)
            {
               addr0041:
               _loc2_ = param1 as ArrayCollection;
               if(!(_loc8_ && Boolean(_loc2_)))
               {
                  §§push(int(_loc2_.length));
                  if(!_loc8_)
                  {
                     _loc3_ = §§pop();
                     if(!_loc8_)
                     {
                        addr0067:
                        §§push(8);
                        if(_loc9_)
                        {
                           addr006f:
                           var _temp_4:* = §§pop();
                           §§push(_temp_4);
                           §§push(_temp_4);
                           if(!(_loc8_ && Boolean(this)))
                           {
                              _loc4_ = §§pop();
                              if(_loc9_)
                              {
                                 addr0093:
                                 §§push(int(§§pop() - _loc3_ % _loc4_));
                                 if(_loc9_)
                                 {
                                    addr009e:
                                    _loc5_ = §§pop();
                                    if(_loc9_)
                                    {
                                       addr00a8:
                                       _loc6_ = 0;
                                    }
                                    while(_loc6_ < _loc5_)
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
                                       if(_loc9_)
                                       {
                                          _loc2_.addItem(_loc7_);
                                          if(!(_loc9_ || param1))
                                          {
                                             continue;
                                          }
                                       }
                                       _loc6_++;
                                    }
                                    if(!_loc8_)
                                    {
                                       itemList.dataProvider = _loc2_;
                                       if(_loc9_)
                                       {
                                          §§goto(addr0129);
                                       }
                                       §§goto(addr0138);
                                    }
                                    addr0129:
                                    itemList.ensureIndexIsVisible(0);
                                    if(_loc9_)
                                    {
                                       addr0138:
                                       itemList.invalidateProperties();
                                    }
                                    addr013e:
                                    return;
                                    addr010e:
                                 }
                                 §§goto(addr00a8);
                              }
                              §§goto(addr009e);
                           }
                           §§goto(addr0093);
                        }
                        §§goto(addr00a8);
                     }
                     §§goto(addr010e);
                  }
                  §§goto(addr006f);
               }
               §§goto(addr0067);
            }
            §§goto(addr013e);
         }
         §§goto(addr0041);
      }
      
      private function _FriendTemplateDataGrid_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_ || _loc3_)
         {
            _loc1_.width = 700;
            if(!(_loc3_ && _loc2_))
            {
               addr003a:
               _loc1_.maxDisplayedLines = 2;
               if(_loc2_)
               {
                  addr0051:
                  _loc1_.horizontalCenter = 0;
                  if(!_loc3_)
                  {
                     _loc1_.styleName = "flavorText";
                     if(_loc2_)
                     {
                        addr0066:
                        _loc1_.id = "flavorText";
                        if(_loc2_)
                        {
                           addr0071:
                           if(!_loc1_.document)
                           {
                              if(_loc2_)
                              {
                                 _loc1_.document = this;
                                 if(_loc2_)
                                 {
                                    addr0093:
                                    flavorText = _loc1_;
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       addr00a7:
                                       BindingManager.executeBindings(this,"flavorText",flavorText);
                                    }
                                 }
                                 return _loc1_;
                              }
                              §§goto(addr00a7);
                           }
                           §§goto(addr0093);
                        }
                     }
                     §§goto(addr00a7);
                  }
                  §§goto(addr0071);
               }
               §§goto(addr0066);
            }
            §§goto(addr0051);
         }
         §§goto(addr003a);
      }
      
      private function _FriendTemplateDataGrid_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!_loc2_)
         {
            _loc1_.left = -7;
            if(_loc3_)
            {
               _loc1_.horizontalAlign = "left";
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.verticalAlign = "middle";
                  if(!_loc2_)
                  {
                     _loc1_.bottom = -4;
                     if(_loc3_ || Boolean(this))
                     {
                        addr0067:
                        _loc1_.gap = 0;
                        if(_loc3_ || _loc2_)
                        {
                           _loc1_.mxmlContent = [this._FriendTemplateDataGrid_VGroup1_c(),this._FriendTemplateDataGrid_List1_i()];
                           if(_loc3_ || Boolean(this))
                           {
                              if(!_loc1_.document)
                              {
                                 if(!_loc2_)
                                 {
                                    addr00ae:
                                    _loc1_.document = this;
                                 }
                              }
                              §§goto(addr00b2);
                           }
                           §§goto(addr00ae);
                        }
                     }
                     addr00b2:
                     return _loc1_;
                  }
               }
               §§goto(addr0067);
            }
         }
         §§goto(addr00ae);
      }
      
      private function _FriendTemplateDataGrid_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_)
         {
            _loc1_.gap = 0;
            if(_loc2_)
            {
               _loc1_.top = 10;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.mxmlContent = [this._FriendTemplateDataGrid_Group1_c(),this._FriendTemplateDataGrid_FriendADDComponent1_c(),this._FriendTemplateDataGrid_FriendGIFTComponent1_c()];
                  if(!_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || _loc3_)
                        {
                           addr0085:
                           _loc1_.document = this;
                        }
                     }
                  }
                  return _loc1_;
               }
            }
         }
         §§goto(addr0085);
      }
      
      private function _FriendTemplateDataGrid_Group1_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.height = 14;
            if(_loc2_)
            {
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     addr0041:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0041);
      }
      
      private function _FriendTemplateDataGrid_FriendADDComponent1_c() : FriendADDComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:FriendADDComponent = new FriendADDComponent();
         if(!_loc3_)
         {
            if(!_loc1_.document)
            {
               if(_loc2_ || _loc3_)
               {
                  addr0046:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr0046);
      }
      
      private function _FriendTemplateDataGrid_FriendGIFTComponent1_c() : FriendGIFTComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:FriendGIFTComponent = new FriendGIFTComponent();
         if(_loc2_)
         {
            if(!_loc1_.document)
            {
               if(_loc2_)
               {
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _FriendTemplateDataGrid_List1_i() : List
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:List = new List();
         if(_loc2_)
         {
            _loc1_.itemRenderer = this._FriendTemplateDataGrid_ClassFactory1_c();
            if(_loc2_)
            {
               addr002d:
               _loc1_.height = 350;
               if(!(_loc3_ && Boolean(this)))
               {
                  _loc1_.width = 610;
                  if(_loc2_)
                  {
                     _loc1_.setStyle("skinClass",GridSkinFriendBook4);
                     if(_loc2_ || _loc2_)
                     {
                        §§goto(addr006e);
                     }
                     §§goto(addr00ae);
                  }
                  §§goto(addr00a2);
               }
            }
            addr006e:
            _loc1_.id = "itemList";
            if(!_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     §§goto(addr0099);
                  }
                  §§goto(addr00ae);
               }
               §§goto(addr00a2);
            }
            addr0099:
            _loc1_.document = this;
            if(!_loc3_)
            {
               addr00a2:
               itemList = _loc1_;
               if(_loc2_)
               {
                  addr00ae:
                  BindingManager.executeBindings(this,"itemList",itemList);
               }
            }
            return _loc1_;
         }
         §§goto(addr002d);
      }
      
      private function _FriendTemplateDataGrid_ClassFactory1_c() : ClassFactory
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ClassFactory = new ClassFactory();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.generator = FriendBookItemRenderer;
         }
         return _loc1_;
      }
      
      public function ___FriendTemplateDataGrid_GroupList1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.setTooltips();
         }
      }
   }
}

