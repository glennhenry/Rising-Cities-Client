package net.bigpoint.cityrama.view.common.components
{
   import mx.binding.BindingManager;
   import mx.collections.ArrayCollection;
   import mx.core.ClassFactory;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.graphics.GradientEntry;
   import mx.graphics.LinearGradient;
   import mx.graphics.SolidColorStroke;
   import net.bigpoint.cityrama.view.common.skins.CategoryMenuListSkin;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.events.IndexChangeEvent;
   import spark.filters.DropShadowFilter;
   import spark.primitives.Rect;
   
   public class CategoryListComponent extends Group
   {
      
      private var _320749718categoryLabel:LocaLabel;
      
      private var _507950523categoryMenuList:List;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:ArrayCollection;
      
      private var _isDirty:Boolean;
      
      public function CategoryListComponent()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            super();
            if(_loc1_ || Boolean(this))
            {
               mx_internal::_document = this;
               if(!(_loc2_ && Boolean(this)))
               {
                  this.percentWidth = 100;
                  if(!(_loc2_ && _loc2_))
                  {
                     this.percentHeight = 100;
                     if(_loc1_ || _loc1_)
                     {
                        addr0075:
                        this.left = 0;
                        if(!(_loc2_ && _loc2_))
                        {
                           addr0087:
                           this.right = 0;
                           if(!_loc2_)
                           {
                              §§goto(addr009b);
                           }
                        }
                        §§goto(addr00c5);
                     }
                     §§goto(addr0087);
                  }
               }
               §§goto(addr0075);
            }
            §§goto(addr0087);
         }
         addr009b:
         this.mxmlContent = [this._CategoryListComponent_HGroup1_c(),this._CategoryListComponent_HGroup2_c(),this._CategoryListComponent_LocaLabel1_i(),this._CategoryListComponent_List1_i()];
         if(_loc1_ || _loc1_)
         {
            addr00c5:
            this.addEventListener("creationComplete",this.___CategoryListComponent_Group1_creationComplete);
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            super.moduleFactory = param1;
            if(!_loc3_)
            {
               §§goto(addr0035);
            }
            §§goto(addr004b);
         }
         addr0035:
         if(this.__moduleFactoryInitialized)
         {
            if(_loc2_ || _loc2_)
            {
               addr004b:
               return;
            }
         }
         else
         {
            this.__moduleFactoryInitialized = true;
         }
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
      
      private function handleCreationComplete() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            this.categoryLabel.text = LocaUtils.getString("rcl.booklayer.goodrebuy","rcl.booklayer.goodrebuy.category.capital");
         }
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super.commitProperties();
            if(!_loc2_)
            {
               §§push(Boolean(this._data));
               if(!(_loc2_ && _loc1_))
               {
                  var _temp_2:* = §§pop();
                  §§push(_temp_2);
                  if(_temp_2)
                  {
                     if(!(_loc2_ && _loc1_))
                     {
                        §§pop();
                        if(!(_loc2_ && _loc2_))
                        {
                           §§goto(addr006f);
                        }
                        §§goto(addr0080);
                     }
                     §§goto(addr0064);
                  }
                  addr006f:
                  §§goto(addr005b);
               }
               §§goto(addr0064);
            }
            addr005b:
            §§push(this._isDirty);
            if(!_loc2_)
            {
               addr0064:
               §§push(§§pop());
            }
            if(§§pop())
            {
               if(_loc1_ || _loc2_)
               {
                  addr0080:
                  this._isDirty = false;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     this.categoryMenuList.dataProvider = this._data;
                  }
               }
            }
            §§goto(addr009d);
         }
         addr009d:
      }
      
      public function set data(param1:ArrayCollection) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            if(!RandomUtilities.isEqual(param1,this._data))
            {
               if(!(_loc2_ && _loc3_))
               {
                  this._data = param1;
                  if(_loc3_)
                  {
                     this._isDirty = true;
                     if(!_loc2_)
                     {
                        addr005a:
                        invalidateProperties();
                     }
                     §§goto(addr005f);
                  }
                  §§goto(addr005a);
               }
            }
            addr005f:
            return;
         }
         §§goto(addr005a);
      }
      
      public function set selectedIndex(param1:int) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.categoryMenuList.selectedIndex = param1;
         }
      }
      
      private function handleCategoryChanged(param1:IndexChangeEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            dispatchEvent(param1);
         }
      }
      
      private function _CategoryListComponent_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!_loc3_)
         {
            _loc1_.horizontalAlign = "center";
            if(_loc2_ || Boolean(this))
            {
               _loc1_.percentWidth = 100;
               if(!_loc3_)
               {
                  _loc1_.left = 1;
                  if(_loc2_)
                  {
                     addr0051:
                     _loc1_.right = 1;
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        _loc1_.percentHeight = 100;
                        if(!(_loc3_ && _loc3_))
                        {
                           addr0083:
                           _loc1_.mxmlContent = [this._CategoryListComponent_Rect1_c()];
                           if(!(_loc3_ && Boolean(_loc1_)))
                           {
                              addr009b:
                              if(!_loc1_.document)
                              {
                                 if(!_loc3_)
                                 {
                                    addr00a7:
                                    _loc1_.document = this;
                                 }
                              }
                              §§goto(addr00ab);
                           }
                        }
                        §§goto(addr00a7);
                     }
                     §§goto(addr0083);
                  }
                  §§goto(addr00ab);
               }
               §§goto(addr0051);
            }
            addr00ab:
            return _loc1_;
         }
         §§goto(addr009b);
      }
      
      private function _CategoryListComponent_Rect1_c() : Rect
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Rect = new Rect();
         if(!_loc3_)
         {
            _loc1_.bottomLeftRadiusX = 9;
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.bottomLeftRadiusY = 9;
               if(_loc2_)
               {
                  _loc1_.bottomRightRadiusX = 9;
                  if(_loc2_)
                  {
                     _loc1_.bottomRightRadiusY = 9;
                     if(_loc2_)
                     {
                        addr0055:
                        _loc1_.topLeftRadiusX = 9;
                        if(_loc2_)
                        {
                           _loc1_.topLeftRadiusY = 9;
                           if(!(_loc3_ && Boolean(this)))
                           {
                              addr007e:
                              _loc1_.topRightRadiusX = 9;
                              if(_loc2_)
                              {
                                 _loc1_.topRightRadiusY = 9;
                                 if(_loc2_ || _loc2_)
                                 {
                                    addr009c:
                                    _loc1_.percentHeight = 100;
                                    if(_loc2_)
                                    {
                                       addr00a6:
                                       _loc1_.percentWidth = 100;
                                       if(_loc2_)
                                       {
                                          _loc1_.stroke = this._CategoryListComponent_SolidColorStroke1_c();
                                          if(!(_loc3_ && _loc2_))
                                          {
                                             addr00d4:
                                             _loc1_.fill = this._CategoryListComponent_LinearGradient1_c();
                                             if(_loc2_)
                                             {
                                                addr00e3:
                                                _loc1_.filters = [this._CategoryListComponent_DropShadowFilter1_c()];
                                                if(_loc2_)
                                                {
                                                   addr00f4:
                                                   _loc1_.initialized(this,null);
                                                }
                                                §§goto(addr00fb);
                                             }
                                             §§goto(addr00f4);
                                          }
                                          §§goto(addr00fb);
                                       }
                                       §§goto(addr00e3);
                                    }
                                    §§goto(addr00d4);
                                 }
                                 §§goto(addr00a6);
                              }
                           }
                           §§goto(addr009c);
                        }
                        §§goto(addr007e);
                     }
                     §§goto(addr00e3);
                  }
                  §§goto(addr0055);
               }
               §§goto(addr00a6);
            }
            §§goto(addr009c);
         }
         addr00fb:
         return _loc1_;
      }
      
      private function _CategoryListComponent_SolidColorStroke1_c() : SolidColorStroke
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:SolidColorStroke = new SolidColorStroke();
         if(_loc2_)
         {
            _loc1_.color = 16777215;
            if(_loc2_)
            {
               _loc1_.alpha = 1;
               if(_loc2_)
               {
                  addr0041:
                  _loc1_.weight = 1;
               }
            }
            return _loc1_;
         }
         §§goto(addr0041);
      }
      
      private function _CategoryListComponent_LinearGradient1_c() : LinearGradient
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LinearGradient = new LinearGradient();
         if(_loc2_)
         {
            _loc1_.rotation = 90;
            if(_loc2_)
            {
               addr0038:
               _loc1_.entries = [this._CategoryListComponent_GradientEntry1_c(),this._CategoryListComponent_GradientEntry2_c()];
            }
            return _loc1_;
         }
         §§goto(addr0038);
      }
      
      private function _CategoryListComponent_GradientEntry1_c() : GradientEntry
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:GradientEntry = new GradientEntry();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.color = 16777215;
            if(_loc2_ || _loc3_)
            {
               _loc1_.alpha = 1;
               if(_loc2_)
               {
                  addr0055:
                  _loc1_.ratio = 0;
               }
            }
            return _loc1_;
         }
         §§goto(addr0055);
      }
      
      private function _CategoryListComponent_GradientEntry2_c() : GradientEntry
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:GradientEntry = new GradientEntry();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.color = 15790320;
            if(_loc3_)
            {
               _loc1_.alpha = 1;
               if(!_loc2_)
               {
                  addr004d:
                  _loc1_.ratio = 1;
               }
               return _loc1_;
            }
         }
         §§goto(addr004d);
      }
      
      private function _CategoryListComponent_DropShadowFilter1_c() : DropShadowFilter
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DropShadowFilter = new DropShadowFilter();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.distance = 1;
            if(_loc2_)
            {
               addr0041:
               _loc1_.color = 5789784;
            }
            return _loc1_;
         }
         §§goto(addr0041);
      }
      
      private function _CategoryListComponent_HGroup2_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!_loc3_)
         {
            _loc1_.gap = 0;
            if(_loc2_)
            {
               _loc1_.left = -1;
               if(_loc2_)
               {
                  _loc1_.right = -1;
                  if(_loc2_ || Boolean(this))
                  {
                     §§goto(addr0051);
                  }
                  §§goto(addr008b);
               }
               §§goto(addr0051);
            }
            §§goto(addr008b);
         }
         addr0051:
         _loc1_.horizontalAlign = "center";
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.mxmlContent = [this._CategoryListComponent_BriskImageDynaLib1_c(),this._CategoryListComponent_BriskImageDynaLib2_c(),this._CategoryListComponent_BriskImageDynaLib3_c()];
            if(_loc2_)
            {
               addr008b:
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     addr0097:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr009b);
            }
            §§goto(addr0097);
         }
         addr009b:
         return _loc1_;
      }
      
      private function _CategoryListComponent_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_goodRebuyPopup";
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.dynaBmpSourceName = "bluebar_left";
               if(!_loc3_)
               {
                  addr004d:
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        _loc1_.document = this;
                     }
                  }
               }
               §§goto(addr005d);
            }
            §§goto(addr004d);
         }
         addr005d:
         return _loc1_;
      }
      
      private function _CategoryListComponent_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_goodRebuyPopup";
            if(!_loc2_)
            {
               _loc1_.dynaBmpSourceName = "bluebar_middle";
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.percentWidth = 100;
                  if(!_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && Boolean(this)))
                        {
                           addr0075:
                           _loc1_.document = this;
                        }
                     }
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0075);
      }
      
      private function _CategoryListComponent_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_goodRebuyPopup";
            if(!_loc3_)
            {
               addr0038:
               _loc1_.dynaBmpSourceName = "bluebar_right";
               if(!_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        addr0050:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr0054);
               }
               §§goto(addr0050);
            }
            addr0054:
            return _loc1_;
         }
         §§goto(addr0038);
      }
      
      private function _CategoryListComponent_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc3_)
         {
            _loc1_.styleName = "departmentSecurityLabel";
            if(_loc2_)
            {
               _loc1_.percentWidth = 90;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  addr003c:
                  _loc1_.maxDisplayedLines = 1;
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     _loc1_.setStyle("paddingTop",11);
                     if(!_loc3_)
                     {
                        _loc1_.setStyle("paddingLeft",14);
                        if(!(_loc3_ && Boolean(this)))
                        {
                           _loc1_.id = "categoryLabel";
                           if(_loc2_ || Boolean(_loc1_))
                           {
                              addr0093:
                              if(!_loc1_.document)
                              {
                                 if(_loc2_)
                                 {
                                    _loc1_.document = this;
                                    if(!(_loc3_ && Boolean(_loc1_)))
                                    {
                                       addr00bd:
                                       this.categoryLabel = _loc1_;
                                       if(_loc2_ || Boolean(this))
                                       {
                                          addr00cf:
                                          BindingManager.executeBindings(this,"categoryLabel",this.categoryLabel);
                                       }
                                    }
                                 }
                                 §§goto(addr00dc);
                              }
                              §§goto(addr00bd);
                           }
                        }
                     }
                     §§goto(addr00dc);
                  }
                  §§goto(addr0093);
               }
               §§goto(addr00cf);
            }
            addr00dc:
            return _loc1_;
         }
         §§goto(addr003c);
      }
      
      private function _CategoryListComponent_List1_i() : List
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:List = new List();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.left = 5;
            if(_loc3_)
            {
               _loc1_.right = 2;
               if(!_loc2_)
               {
                  _loc1_.top = 42;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     addr004e:
                     _loc1_.percentWidth = 100;
                     if(_loc3_ || _loc3_)
                     {
                        _loc1_.itemRenderer = this._CategoryListComponent_ClassFactory1_c();
                        if(_loc3_)
                        {
                           addr007b:
                           _loc1_.setStyle("skinClass",CategoryMenuListSkin);
                           if(_loc3_)
                           {
                              _loc1_.addEventListener("change",this.__categoryMenuList_change);
                              if(!(_loc2_ && Boolean(_loc1_)))
                              {
                                 _loc1_.id = "categoryMenuList";
                                 if(_loc3_)
                                 {
                                    addr00ae:
                                    if(!_loc1_.document)
                                    {
                                       if(_loc3_ || _loc3_)
                                       {
                                          _loc1_.document = this;
                                          if(_loc3_ || Boolean(_loc1_))
                                          {
                                             addr00df:
                                             this.categoryMenuList = _loc1_;
                                             if(_loc3_)
                                             {
                                                addr00e9:
                                                BindingManager.executeBindings(this,"categoryMenuList",this.categoryMenuList);
                                             }
                                          }
                                       }
                                       §§goto(addr00f6);
                                    }
                                 }
                                 §§goto(addr00df);
                              }
                              §§goto(addr00ae);
                           }
                        }
                     }
                     §§goto(addr00e9);
                  }
                  §§goto(addr007b);
               }
               §§goto(addr004e);
            }
            §§goto(addr00e9);
         }
         addr00f6:
         return _loc1_;
      }
      
      private function _CategoryListComponent_ClassFactory1_c() : ClassFactory
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ClassFactory = new ClassFactory();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.generator = CategoryMenuListItemRenderer;
         }
         return _loc1_;
      }
      
      public function __categoryMenuList_change(param1:IndexChangeEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            this.handleCategoryChanged(param1);
         }
      }
      
      public function ___CategoryListComponent_Group1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.handleCreationComplete();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get categoryLabel() : LocaLabel
      {
         return this._320749718categoryLabel;
      }
      
      public function set categoryLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._320749718categoryLabel;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  this._320749718categoryLabel = param1;
                  if(_loc4_ || Boolean(param1))
                  {
                     addr0060:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr0077:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"categoryLabel",_loc2_,param1));
                        }
                     }
                     §§goto(addr0086);
                  }
               }
               §§goto(addr0077);
            }
            addr0086:
            return;
         }
         §§goto(addr0060);
      }
      
      [Bindable(event="propertyChange")]
      public function get categoryMenuList() : List
      {
         return this._507950523categoryMenuList;
      }
      
      public function set categoryMenuList(param1:List) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._507950523categoryMenuList;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(_loc2_))
               {
                  this._507950523categoryMenuList = param1;
                  if(_loc4_)
                  {
                     addr0057:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0066:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"categoryMenuList",_loc2_,param1));
                        }
                     }
                     §§goto(addr0075);
                  }
               }
               §§goto(addr0066);
            }
            addr0075:
            return;
         }
         §§goto(addr0057);
      }
   }
}

