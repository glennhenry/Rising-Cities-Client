package net.bigpoint.cityrama.view.userInterfaceInfoLayer.component
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
   import mx.core.IFlexModuleFactory;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.HeaderComponent;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.component.skin.AbstractUIInfolayerComponentSkin;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.AbstractUIInfolayerContentVo;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.SkinnableContainer;
   
   public class AbstractUIInfolayerComponent extends SkinnableContainer
   {
      
      private static var _skinParts:Object = {
         "backgroundGroup":true,
         "topInformation":true,
         "header":true,
         "headerIcon":true,
         "contentGroup":false
      };
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public var backgroundGroup:Group;
      
      public var header:HeaderComponent;
      
      public var headerIcon:BriskImageDynaLib;
      
      public var topInformation:LocaLabel;
      
      protected var _data:AbstractUIInfolayerContentVo;
      
      protected var _dirty:Boolean;
      
      private var _skinDirty:Boolean;
      
      public function AbstractUIInfolayerComponent()
      {
         super();
         mx_internal::_document = this;
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var factory:IFlexModuleFactory = param1;
         super.moduleFactory = factory;
         if(this.__moduleFactoryInitialized)
         {
            return;
         }
         this.__moduleFactoryInitialized = true;
         if(!this.styleDeclaration)
         {
            this.styleDeclaration = new CSSStyleDeclaration(null,styleManager);
         }
         this.styleDeclaration.defaultFactory = function():void
         {
            this.skinClass = AbstractUIInfolayerComponentSkin;
         };
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      public function set data(param1:AbstractUIInfolayerContentVo) : void
      {
         if(!RandomUtilities.isEqual(this._data,param1))
         {
            this._dirty = true;
            this._data = param1;
            this._skinDirty = true;
         }
         invalidateProperties();
      }
      
      override protected function commitProperties() : void
      {
         if(this._dirty)
         {
            this._dirty = false;
            this.header.label = this._data.headerString;
            this.header.labelDisplay.percentWidth = 80;
            this.header.labelDisplay.styleName = "UIInfolayerheader";
            this.header.includeInLayout = this.header.visible = this._data.headerString != "";
            if(this._data.headerIconDynaVo != null)
            {
               this.headerIcon.briskDynaVo = this._data.headerIconDynaVo;
            }
         }
         super.commitProperties();
         this.updateSkin();
      }
      
      protected function updateSkin() : void
      {
         if(this._skinDirty && this._data != null)
         {
            this._skinDirty = false;
            switch(this._data.alignment)
            {
               case AbstractUIInfolayerContentVo.ALIGN_TOP:
                  skin.currentState = "indicator_bottom";
                  break;
               case AbstractUIInfolayerContentVo.ALIGN_BOTTOM:
                  skin.currentState = "indicator_top";
                  break;
               case AbstractUIInfolayerContentVo.ALIGN_RIGHT:
                  skin.currentState = "indicator_left";
                  break;
               case AbstractUIInfolayerContentVo.ALIGN_LEFT:
                  skin.currentState = "indicator_right";
            }
         }
      }
      
      override public function move(param1:Number, param2:Number) : void
      {
         switch(this._data.alignment)
         {
            case AbstractUIInfolayerContentVo.ALIGN_TOP:
               param1 -= width / 2;
               param2 -= height;
               break;
            case AbstractUIInfolayerContentVo.ALIGN_BOTTOM:
               param1 -= width / 2;
         }
         super.move(param1,param2);
      }
   }
}

