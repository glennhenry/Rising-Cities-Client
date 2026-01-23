package net.bigpoint.cityrama.view.citysquare.ui.components
{
   import mx.binding.BindingManager;
   import mx.collections.ArrayCollection;
   import mx.core.ClassFactory;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.view.citysquare.ui.components.skins.EventSelectionListSkin;
   import net.bigpoint.cityrama.view.citysquare.ui.vo.CitySquareEventSelectionVo;
   import net.bigpoint.cityrama.view.citysquare.ui.vo.EventSelectionVo;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.PaperPopupWindow;
   import net.bigpoint.util.LocaUtils;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.components.VGroup;
   
   public class CitySquareEventSelectionPopup extends PaperPopupWindow
   {
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!_loc1_)
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
      
      private var _482228176eventSelectionList:List;
      
      private var _1684755691flavorText:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:CitySquareEventSelectionVo;
      
      private var _dirty:Boolean;
      
      public function CitySquareEventSelectionPopup()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super();
            if(_loc2_ || _loc1_)
            {
               mx_internal::_document = this;
               if(!_loc1_)
               {
                  this.styleName = "eventselection";
                  if(!_loc1_)
                  {
                     addr0058:
                     this.mxmlContentFactory = new DeferredInstanceFromFunction(this._CitySquareEventSelectionPopup_Array1_c);
                     if(_loc2_)
                     {
                        addr006d:
                        this.addEventListener("creationComplete",this.___CitySquareEventSelectionPopup_PaperPopupWindow1_creationComplete);
                     }
                  }
                  §§goto(addr0079);
               }
               §§goto(addr006d);
            }
            addr0079:
            return;
         }
         §§goto(addr0058);
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
                  if(!_loc3_)
                  {
                     §§goto(addr0042);
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
               }
               §§goto(addr004d);
            }
            addr0042:
            return;
         }
         addr004d:
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super.initialize();
         }
      }
      
      private function onCreationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.title = LocaUtils.getString("rcl.citysquare.questselection","rcl.citysquare.questselection.title.capital");
            if(_loc2_ || Boolean(param1))
            {
               this.flavorText.text = LocaUtils.getString("rcl.citysquare.questselection","rcl.citysquare.questselection.flavor");
            }
         }
      }
      
      public function set data(param1:CitySquareEventSelectionVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            this._data = param1;
            if(!_loc2_)
            {
               addr0035:
               this._dirty = true;
               if(!_loc2_)
               {
                  invalidateProperties();
               }
            }
            return;
         }
         §§goto(addr0035);
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc1_:ArrayCollection = null;
         var _loc2_:EventSelectionVo = null;
         if(!_loc6_)
         {
            super.commitProperties();
            if(!_loc6_)
            {
               §§push(this._data == null);
               if(!_loc6_)
               {
                  §§push(!§§pop());
                  if(!(_loc6_ && Boolean(this)))
                  {
                     var _temp_2:* = §§pop();
                     §§push(_temp_2);
                     if(_temp_2)
                     {
                        if(!(_loc6_ && Boolean(_loc2_)))
                        {
                           addr005d:
                           §§pop();
                           if(_loc5_)
                           {
                              §§goto(addr0079);
                           }
                           §§goto(addr0090);
                        }
                        §§goto(addr0078);
                     }
                     addr0079:
                     §§goto(addr0064);
                  }
                  §§goto(addr005d);
               }
               §§goto(addr0078);
            }
            §§goto(addr008b);
         }
         addr0064:
         §§push(this._dirty);
         if(!_loc6_)
         {
            addr0078:
            §§push(§§pop());
         }
         if(§§pop())
         {
            if(!(_loc6_ && Boolean(_loc1_)))
            {
               addr008b:
               this._dirty = false;
            }
            addr0090:
            _loc1_ = new ArrayCollection();
            var _loc3_:int = 0;
            for each(_loc2_ in this._data.allEvents)
            {
               if(!(_loc6_ && Boolean(this)))
               {
                  _loc1_.addItem(_loc2_);
               }
            }
            if(!(_loc6_ && Boolean(_loc3_)))
            {
               this.eventSelectionList.dataProvider = _loc1_;
            }
         }
      }
      
      private function _CitySquareEventSelectionPopup_Array1_c() : Array
      {
         return [this._CitySquareEventSelectionPopup_VGroup1_c()];
      }
      
      private function _CitySquareEventSelectionPopup_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               _loc1_.percentHeight = 100;
               if(_loc2_)
               {
                  _loc1_.horizontalAlign = "center";
                  if(_loc2_ || _loc2_)
                  {
                     _loc1_.verticalAlign = "top";
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        addr006a:
                        _loc1_.paddingTop = 25;
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           _loc1_.gap = 0;
                           if(!_loc3_)
                           {
                              §§goto(addr0092);
                           }
                        }
                     }
                     §§goto(addr00b4);
                  }
                  §§goto(addr006a);
               }
               §§goto(addr00a8);
            }
            §§goto(addr006a);
         }
         addr0092:
         _loc1_.mxmlContent = [this._CitySquareEventSelectionPopup_HGroup1_c(),this._CitySquareEventSelectionPopup_HGroup2_c()];
         if(_loc2_)
         {
            addr00a8:
            if(!_loc1_.document)
            {
               if(!_loc3_)
               {
                  addr00b4:
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _CitySquareEventSelectionPopup_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.verticalAlign = "middle";
            if(_loc3_)
            {
               addr0033:
               _loc1_.horizontalAlign = "center";
               if(!_loc2_)
               {
                  _loc1_.height = 40;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     _loc1_.percentWidth = 100;
                     if(_loc3_ || _loc2_)
                     {
                        _loc1_.mxmlContent = [this._CitySquareEventSelectionPopup_LocaLabel1_i()];
                        addr006e:
                        if(_loc3_ || _loc2_)
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
                     §§goto(addr00a6);
                  }
                  addr00aa:
                  return _loc1_;
               }
               §§goto(addr006e);
            }
            §§goto(addr0092);
         }
         §§goto(addr0033);
      }
      
      private function _CitySquareEventSelectionPopup_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.percentWidth = 90;
            if(_loc2_)
            {
               _loc1_.styleName = "flavorText";
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.maxDisplayedLines = 1;
                  if(_loc2_)
                  {
                     addr005b:
                     _loc1_.id = "flavorText";
                     if(_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              _loc1_.document = this;
                              if(!(_loc3_ && Boolean(this)))
                              {
                                 addr0091:
                                 this.flavorText = _loc1_;
                                 if(_loc2_)
                                 {
                                    addr009b:
                                    BindingManager.executeBindings(this,"flavorText",this.flavorText);
                                 }
                                 §§goto(addr00a8);
                              }
                              §§goto(addr009b);
                           }
                           §§goto(addr00a8);
                        }
                        §§goto(addr0091);
                     }
                     §§goto(addr009b);
                  }
                  addr00a8:
                  return _loc1_;
               }
               §§goto(addr0091);
            }
            §§goto(addr005b);
         }
         §§goto(addr0091);
      }
      
      private function _CitySquareEventSelectionPopup_HGroup2_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || _loc2_)
         {
            _loc1_.verticalAlign = "middle";
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.horizontalAlign = "center";
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.height = 320;
                  if(!_loc2_)
                  {
                     §§goto(addr0062);
                  }
                  §§goto(addr0080);
               }
            }
            §§goto(addr009c);
         }
         addr0062:
         _loc1_.percentWidth = 100;
         if(!(_loc2_ && _loc3_))
         {
            addr0080:
            _loc1_.mxmlContent = [this._CitySquareEventSelectionPopup_List1_i()];
            if(_loc3_)
            {
               §§goto(addr0090);
            }
            §§goto(addr009c);
         }
         addr0090:
         if(!_loc1_.document)
         {
            if(_loc3_)
            {
               addr009c:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _CitySquareEventSelectionPopup_List1_i() : List
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:List = new List();
         if(_loc2_)
         {
            _loc1_.height = 320;
            if(!_loc3_)
            {
               _loc1_.itemRenderer = this._CitySquareEventSelectionPopup_ClassFactory1_c();
               if(_loc2_)
               {
                  _loc1_.setStyle("skinClass",EventSelectionListSkin);
                  if(_loc2_)
                  {
                     _loc1_.id = "eventSelectionList";
                     if(_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              §§goto(addr0078);
                           }
                           §§goto(addr0093);
                        }
                     }
                     §§goto(addr0089);
                  }
               }
               §§goto(addr0093);
            }
            addr0078:
            _loc1_.document = this;
            if(!(_loc3_ && _loc3_))
            {
               addr0089:
               this.eventSelectionList = _loc1_;
               if(!_loc3_)
               {
                  addr0093:
                  BindingManager.executeBindings(this,"eventSelectionList",this.eventSelectionList);
               }
            }
            return _loc1_;
         }
         §§goto(addr0089);
      }
      
      private function _CitySquareEventSelectionPopup_ClassFactory1_c() : ClassFactory
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ClassFactory = new ClassFactory();
         if(_loc2_)
         {
            _loc1_.generator = CitySquareEventSelectionItemRenderer;
         }
         return _loc1_;
      }
      
      public function ___CitySquareEventSelectionPopup_PaperPopupWindow1_creationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            this.onCreationComplete(param1);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get eventSelectionList() : List
      {
         return this._482228176eventSelectionList;
      }
      
      public function set eventSelectionList(param1:List) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._482228176eventSelectionList;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(this))
               {
                  addr003f:
                  this._482228176eventSelectionList = param1;
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || _loc3_)
                        {
                           addr0076:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"eventSelectionList",_loc2_,param1));
                        }
                     }
                     §§goto(addr0085);
                  }
               }
               §§goto(addr0076);
            }
            addr0085:
            return;
         }
         §§goto(addr003f);
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
         if(_loc4_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1684755691flavorText = param1;
                  addr003e:
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavorText",_loc2_,param1));
                        }
                     }
                     §§goto(addr007c);
                  }
                  §§goto(addr006d);
               }
            }
            addr007c:
            return;
         }
         §§goto(addr003e);
      }
   }
}

