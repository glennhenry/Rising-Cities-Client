package net.bigpoint.cityrama.view.residentSelection.ui.components
{
   import mx.binding.BindingManager;
   import mx.collections.ArrayCollection;
   import mx.core.ClassFactory;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.model.detailViews.vo.ResidentSelectionVo;
   import net.bigpoint.cityrama.model.residentSelection.vo.ResidentDetailVo;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.PaperPopupWindow;
   import net.bigpoint.cityrama.view.residentSelection.ui.skins.ResidentListSkin;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.components.VGroup;
   
   public class ResidentSelectionPopup extends PaperPopupWindow
   {
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_ || ResidentSelectionPopup)
      {
         _skinParts = {
            "moveArea":false,
            "closeButton":false,
            "controlBarGroup":false,
            "contentGroup":false,
            "backButton":false,
            "tabBar":false,
            "sideMenu":false,
            "titleDisplay":false
         };
      }
      
      private var _1684755691flavorText:LocaLabel;
      
      private var _1246295935listGroup:HGroup;
      
      private var _311670258residentList:List;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _residentData:ResidentSelectionVo;
      
      private var _isDirty:Boolean;
      
      public function ResidentSelectionPopup()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            super();
            if(_loc1_)
            {
               mx_internal::_document = this;
               if(_loc1_)
               {
                  this.styleName = "residentSelection";
                  if(_loc1_)
                  {
                     §§goto(addr004d);
                  }
                  §§goto(addr0074);
               }
               addr004d:
               this.showBackButton = false;
               if(_loc1_)
               {
                  this.width = 785;
                  if(!(_loc2_ && _loc2_))
                  {
                     addr0074:
                     this.height = 430;
                     if(!(_loc2_ && _loc1_))
                     {
                        addr0087:
                        this.mxmlContentFactory = new DeferredInstanceFromFunction(this._ResidentSelectionPopup_Array1_c);
                     }
                     §§goto(addr0097);
                  }
                  §§goto(addr0087);
               }
               addr0097:
               return;
            }
            §§goto(addr0087);
         }
         §§goto(addr0074);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            super.moduleFactory = param1;
            if(_loc2_ || _loc2_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_ || _loc3_)
                  {
                     return;
                  }
               }
               this.__moduleFactoryInitialized = true;
            }
         }
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
      
      public function set data(param1:ResidentSelectionVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            if(!RandomUtilities.isEqual(param1,this._residentData))
            {
               if(_loc3_ || _loc3_)
               {
                  this._residentData = param1;
                  if(_loc3_)
                  {
                     §§goto(addr0052);
                  }
                  §§goto(addr005c);
               }
               addr0052:
               this._isDirty = true;
               if(!_loc2_)
               {
                  addr005c:
                  invalidateProperties();
               }
               §§goto(addr0061);
            }
            addr0061:
            return;
         }
         §§goto(addr005c);
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc1_:ArrayCollection = null;
         var _loc2_:ResidentDetailVo = null;
         if(!_loc6_)
         {
            super.commitProperties();
            if(!(_loc6_ && Boolean(_loc1_)))
            {
               §§push(Boolean(this._residentData));
               if(_loc5_ || Boolean(this))
               {
                  var _temp_3:* = §§pop();
                  §§push(_temp_3);
                  if(_temp_3)
                  {
                     if(!_loc6_)
                     {
                        §§pop();
                        if(!_loc6_)
                        {
                           §§goto(addr0067);
                        }
                        §§goto(addr0088);
                     }
                  }
                  addr0067:
                  §§push(this._isDirty);
                  if(_loc5_)
                  {
                     addr0066:
                     §§push(§§pop());
                  }
                  if(§§pop())
                  {
                     if(_loc5_)
                     {
                        addr0071:
                        this._isDirty = false;
                        if(!_loc6_)
                        {
                           addr0088:
                           this.title = LocaUtils.getString("rcl.booklayer.residentSelection","rcl.booklayer.residentSelection.title");
                           if(!_loc6_)
                           {
                              this.flavorText.text = LocaUtils.getString("rcl.booklayer.residentSelection","rcl.booklayer.residentSelection.flavor");
                           }
                        }
                     }
                     _loc1_ = new ArrayCollection();
                     for each(_loc2_ in this._residentData.residents)
                     {
                        if(!(_loc6_ && Boolean(this)))
                        {
                           if(_loc2_.type == this._residentData.currentResidents)
                           {
                              if(_loc6_)
                              {
                                 continue;
                              }
                              _loc2_.movePossible = false;
                              if(!_loc5_)
                              {
                                 continue;
                              }
                           }
                        }
                        _loc1_.addItem(_loc2_);
                     }
                     if(_loc5_)
                     {
                        this.residentList.dataProvider = _loc1_;
                     }
                  }
                  return;
               }
               §§goto(addr0066);
            }
         }
         §§goto(addr0071);
      }
      
      private function _ResidentSelectionPopup_Array1_c() : Array
      {
         return [this._ResidentSelectionPopup_VGroup1_c()];
      }
      
      private function _ResidentSelectionPopup_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.width = 740;
            if(!_loc2_)
            {
               _loc1_.percentHeight = 100;
               if(_loc3_)
               {
                  _loc1_.gap = -3;
                  addr003c:
                  if(!_loc2_)
                  {
                     _loc1_.horizontalAlign = "center";
                     if(_loc3_)
                     {
                        §§goto(addr005c);
                     }
                     §§goto(addr00a9);
                  }
                  §§goto(addr006e);
               }
               addr005c:
               _loc1_.verticalAlign = "top";
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.mxmlContent = [this._ResidentSelectionPopup_Group1_c(),this._ResidentSelectionPopup_VGroup2_c(),this._ResidentSelectionPopup_HGroup1_i()];
                  addr006e:
                  if(!_loc2_)
                  {
                     §§goto(addr0095);
                  }
                  §§goto(addr00a9);
               }
               addr0095:
               if(!_loc1_.document)
               {
                  if(_loc3_ || _loc3_)
                  {
                     addr00a9:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr00ad);
            }
            §§goto(addr003c);
         }
         addr00ad:
         return _loc1_;
      }
      
      private function _ResidentSelectionPopup_Group1_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.width = 700;
            if(_loc3_)
            {
               _loc1_.height = 38;
               if(!_loc2_)
               {
                  addr003f:
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        addr004b:
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
            §§goto(addr004b);
         }
         §§goto(addr003f);
      }
      
      private function _ResidentSelectionPopup_VGroup2_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_)
         {
            _loc1_.height = 32;
            if(!_loc3_)
            {
               _loc1_.percentWidth = 90;
               if(_loc2_)
               {
                  addr0032:
                  _loc1_.verticalAlign = "middle";
                  if(!(_loc3_ && _loc2_))
                  {
                     addr0051:
                     _loc1_.horizontalAlign = "center";
                     if(!_loc3_)
                     {
                        _loc1_.mxmlContent = [this._ResidentSelectionPopup_LocaLabel1_i()];
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           addr007e:
                           if(!_loc1_.document)
                           {
                              if(!(_loc3_ && _loc3_))
                              {
                                 addr0092:
                                 _loc1_.document = this;
                              }
                           }
                        }
                        return _loc1_;
                     }
                     §§goto(addr007e);
                  }
                  §§goto(addr0092);
               }
               §§goto(addr0051);
            }
            §§goto(addr0032);
         }
         §§goto(addr007e);
      }
      
      private function _ResidentSelectionPopup_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.percentWidth = 90;
            if(_loc3_ || Boolean(this))
            {
               _loc1_.maxHeight = 32;
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.styleName = "flavorText";
                  if(!_loc2_)
                  {
                     addr0061:
                     _loc1_.id = "flavorText";
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              §§goto(addr008d);
                           }
                        }
                        §§goto(addr0096);
                     }
                  }
                  §§goto(addr00a0);
               }
               §§goto(addr0061);
            }
            addr008d:
            _loc1_.document = this;
            if(_loc3_)
            {
               addr0096:
               this.flavorText = _loc1_;
               if(!_loc2_)
               {
                  addr00a0:
                  BindingManager.executeBindings(this,"flavorText",this.flavorText);
               }
            }
            return _loc1_;
         }
         §§goto(addr00a0);
      }
      
      private function _ResidentSelectionPopup_HGroup1_i() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!_loc3_)
         {
            _loc1_.minWidth = 666;
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.horizontalAlign = "center";
               if(_loc2_)
               {
                  _loc1_.height = 314;
                  if(!_loc3_)
                  {
                     _loc1_.mxmlContent = [this._ResidentSelectionPopup_List1_i()];
                     if(!_loc3_)
                     {
                        §§goto(addr0062);
                     }
                  }
                  §§goto(addr00a8);
               }
            }
            addr0062:
            _loc1_.id = "listGroup";
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     _loc1_.document = this;
                     if(!_loc3_)
                     {
                        §§goto(addr0096);
                     }
                  }
                  §§goto(addr00a8);
               }
               addr0096:
               this.listGroup = _loc1_;
               if(_loc2_ || _loc3_)
               {
                  addr00a8:
                  BindingManager.executeBindings(this,"listGroup",this.listGroup);
               }
            }
            §§goto(addr00b5);
         }
         addr00b5:
         return _loc1_;
      }
      
      private function _ResidentSelectionPopup_List1_i() : List
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:List = new List();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.itemRenderer = this._ResidentSelectionPopup_ClassFactory1_c();
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.setStyle("skinClass",ResidentListSkin);
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.id = "residentList";
                  if(_loc3_ || _loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && _loc3_))
                        {
                           §§goto(addr0092);
                        }
                     }
                     §§goto(addr00a3);
                  }
                  addr0092:
                  _loc1_.document = this;
                  if(!(_loc2_ && _loc2_))
                  {
                     addr00a3:
                     this.residentList = _loc1_;
                     if(!_loc2_)
                     {
                        addr00ad:
                        BindingManager.executeBindings(this,"residentList",this.residentList);
                     }
                  }
                  §§goto(addr00ba);
               }
               §§goto(addr00ad);
            }
            addr00ba:
            return _loc1_;
         }
         §§goto(addr00a3);
      }
      
      private function _ResidentSelectionPopup_ClassFactory1_c() : ClassFactory
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ClassFactory = new ClassFactory();
         if(_loc3_)
         {
            _loc1_.generator = ResidentChoiceItemRenderer;
         }
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get flavorText() : LocaLabel
      {
         return this._1684755691flavorText;
      }
      
      public function set flavorText(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1684755691flavorText;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1684755691flavorText = param1;
                  if(!_loc3_)
                  {
                     addr0044:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0053:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavorText",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0062);
               }
               §§goto(addr0053);
            }
            addr0062:
            return;
         }
         §§goto(addr0044);
      }
      
      [Bindable(event="propertyChange")]
      public function get listGroup() : HGroup
      {
         return this._1246295935listGroup;
      }
      
      public function set listGroup(param1:HGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1246295935listGroup;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1246295935listGroup = param1;
                  addr0039:
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"listGroup",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0039);
      }
      
      [Bindable(event="propertyChange")]
      public function get residentList() : List
      {
         return this._311670258residentList;
      }
      
      public function set residentList(param1:List) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._311670258residentList;
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  addr0049:
                  this._311670258residentList = param1;
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     addr0068:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(param1))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"residentList",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr008e);
               }
               §§goto(addr0068);
            }
            addr008e:
            return;
         }
         §§goto(addr0049);
      }
   }
}

