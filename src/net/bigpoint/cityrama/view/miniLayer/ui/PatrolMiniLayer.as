package net.bigpoint.cityrama.view.miniLayer.ui
{
   import flash.accessibility.*;
   import flash.debugger.*;
   import flash.display.*;
   import flash.errors.*;
   import flash.events.*;
   import flash.external.*;
   import flash.geom.*;
   import flash.media.*;
   import flash.net.*;
   import flash.printing.*;
   import flash.profiler.*;
   import flash.system.*;
   import flash.text.*;
   import flash.ui.*;
   import flash.utils.*;
   import flash.xml.*;
   import mx.binding.*;
   import mx.collections.ArrayCollection;
   import mx.core.ClassFactory;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.resources.ResourceManager;
   import mx.styles.*;
   import mx.utils.StringUtil;
   import net.bigpoint.cityrama.model.assistants.vo.PatrolOptionVo;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MiniLayerWindow;
   import net.bigpoint.cityrama.view.miniLayer.components.PatrolOptionsItemRenderer;
   import net.bigpoint.cityrama.view.miniLayer.components.skins.PatrolOptionsSkin;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.components.VGroup;
   
   public class PatrolMiniLayer extends MiniLayerWindow
   {
      
      private static var _skinParts:Object = {
         "moveArea":false,
         "sparkle":false,
         "closeButton":false,
         "controlBarGroup":false,
         "attentionSign":false,
         "contentGroup":false,
         "titleDisplay":false
      };
      
      private var _800887486flavourText:LocaLabel;
      
      private var _273241018mainGroup:VGroup;
      
      private var _1184756046patrolOptions:List;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:Vector.<PatrolOptionVo>;
      
      private var _isDirty:Boolean;
      
      public function PatrolMiniLayer()
      {
         super();
         mx_internal::_document = this;
         this.width = 540;
         this.height = 313;
         this.showAttentionSign = false;
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._PatrolMiniLayer_Array1_c);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         super.moduleFactory = param1;
         if(this.__moduleFactoryInitialized)
         {
            return;
         }
         this.__moduleFactoryInitialized = true;
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      override protected function commitProperties() : void
      {
         var _loc1_:String = null;
         var _loc2_:ArrayCollection = null;
         var _loc3_:PatrolOptionVo = null;
         super.commitProperties();
         if(Boolean(this._data) && this._isDirty)
         {
            this._isDirty = false;
            title = ResourceManager.getInstance().getString(String("rcl.miniLayer.streetPatrol"),String("rcl.miniLayer.streetPatrol.name.capital"));
            _loc1_ = ResourceManager.getInstance().getString(String("rcl.miniLayer.streetPatrol"),String("rcl.miniLayer.streetPatrol.flavour"));
            this.flavourText.text = StringUtil.substitute(_loc1_,this._data[0].runtimeHours);
            if(this._data.length > 0)
            {
               this._data.sort(this.sortByRate);
               _loc2_ = new ArrayCollection();
               for each(_loc3_ in this._data)
               {
                  _loc2_.addItem(_loc3_);
               }
               this.patrolOptions.dataProvider = _loc2_;
            }
         }
      }
      
      private function sortByRate(param1:PatrolOptionVo, param2:PatrolOptionVo) : int
      {
         if(param1.rate > param2.rate)
         {
            return -1;
         }
         if(param1.rate < param2.rate)
         {
            return 1;
         }
         return 0;
      }
      
      public function set data(param1:Vector.<PatrolOptionVo>) : void
      {
         if(!RandomUtilities.isEqual(param1,this._data))
         {
            this._data = param1;
            this._isDirty = true;
            invalidateProperties();
         }
      }
      
      private function _PatrolMiniLayer_Array1_c() : Array
      {
         return [this._PatrolMiniLayer_VGroup1_i()];
      }
      
      private function _PatrolMiniLayer_VGroup1_i() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "middle";
         _loc1_.paddingTop = -20;
         _loc1_.gap = -5;
         _loc1_.mxmlContent = [this._PatrolMiniLayer_HGroup1_c(),this._PatrolMiniLayer_List1_i()];
         _loc1_.id = "mainGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.mainGroup = _loc1_;
         BindingManager.executeBindings(this,"mainGroup",this.mainGroup);
         return _loc1_;
      }
      
      private function _PatrolMiniLayer_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 90;
         _loc1_.height = 50;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._PatrolMiniLayer_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PatrolMiniLayer_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.percentWidth = 80;
         _loc1_.styleName = "miniLayerFlavourText";
         _loc1_.maxDisplayedLines = 3;
         _loc1_.id = "flavourText";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.flavourText = _loc1_;
         BindingManager.executeBindings(this,"flavourText",this.flavourText);
         return _loc1_;
      }
      
      private function _PatrolMiniLayer_List1_i() : List
      {
         var _loc1_:List = new List();
         _loc1_.itemRenderer = this._PatrolMiniLayer_ClassFactory1_c();
         _loc1_.setStyle("skinClass",PatrolOptionsSkin);
         _loc1_.id = "patrolOptions";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.patrolOptions = _loc1_;
         BindingManager.executeBindings(this,"patrolOptions",this.patrolOptions);
         return _loc1_;
      }
      
      private function _PatrolMiniLayer_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = PatrolOptionsItemRenderer;
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get flavourText() : LocaLabel
      {
         return this._800887486flavourText;
      }
      
      public function set flavourText(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._800887486flavourText;
         if(_loc2_ !== param1)
         {
            this._800887486flavourText = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavourText",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mainGroup() : VGroup
      {
         return this._273241018mainGroup;
      }
      
      public function set mainGroup(param1:VGroup) : void
      {
         var _loc2_:Object = this._273241018mainGroup;
         if(_loc2_ !== param1)
         {
            this._273241018mainGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mainGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get patrolOptions() : List
      {
         return this._1184756046patrolOptions;
      }
      
      public function set patrolOptions(param1:List) : void
      {
         var _loc2_:Object = this._1184756046patrolOptions;
         if(_loc2_ !== param1)
         {
            this._1184756046patrolOptions = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"patrolOptions",_loc2_,param1));
            }
         }
      }
   }
}

