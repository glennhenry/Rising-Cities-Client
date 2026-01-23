package net.bigpoint.cityrama.view.fieldInfoLayer
{
   import as3isolib.geom.IsoMath;
   import as3isolib.geom.Pt;
   import flash.geom.Point;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.field.PlayFieldHighlightedObjectsProxy;
   import net.bigpoint.cityrama.model.field.fieldInfoLayer.FieldInfoLayerProxy;
   import net.bigpoint.cityrama.model.field.fieldInfoLayer.vo.FieldInfoLayerConstructionVo;
   import net.bigpoint.cityrama.model.field.fieldInfoLayer.vo.FieldInfoLayerHeaderVo;
   import net.bigpoint.cityrama.view.field.FieldMediator;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ResidentialFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ShopFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.fieldInfoLayer.ui.components.FieldInfoComponent;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   import spark.components.Group;
   
   public class FieldInfoLayerMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "FieldInfoLayerMediator";
      
      private var _currentInfoLayer:FieldInfoComponent;
      
      private var _position:Point;
      
      private var _fieldInfoLayerProxy:FieldInfoLayerProxy;
      
      private var _highlightObjectsProxy:PlayFieldHighlightedObjectsProxy;
      
      public function FieldInfoLayerMediator(param1:Group)
      {
         super(NAME,param1);
      }
      
      override public function onRegister() : void
      {
         this._fieldInfoLayerProxy = facade.retrieveProxy(FieldInfoLayerProxy.NAME) as FieldInfoLayerProxy;
         this._highlightObjectsProxy = facade.retrieveProxy(PlayFieldHighlightedObjectsProxy.NAME) as PlayFieldHighlightedObjectsProxy;
      }
      
      override public function onRemove() : void
      {
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_RESIDENTIAL,ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_PRODUCTION,ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_DECORATION,ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_POWERPLANT,ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_EXPANSION,ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_NEEDSHOP,ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_BOULDER,ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_EVENT_SQUARE,ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_TOWNHALL,ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_EMERGENCY,ApplicationNotificationConstants.FIELD_INFOLAYER_HIDE,ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_INFRASTRUCTURE_DECORATION,ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_INFRASTRUCTURE_BUILDING,ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_SECURITY_GRADE,ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_ACADEMY,ApplicationNotificationConstants
         .FIELD_INFOLAYER_SHOW_MYSTERYBUILDING,ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_CINEMA,ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_SCHEDULED_DROP,ApplicationNotificationConstants.LAYOUT_NEW_DIMENSIONS,ApplicationNotificationConstants.CONFIG_EVENTS_CHANGED,ApplicationNotificationConstants.EVENTS_CHANGED];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         if(param1.getBody() as BillboardObject)
         {
            this._position = this.isoToStage(param1.getBody() as BillboardObject);
            var _loc2_:BillboardObject = param1.getBody() as BillboardObject;
         }
         switch(param1.getName())
         {
            case ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_INFRASTRUCTURE_BUILDING:
               if(null.billboardObjectVo.isConnectedToStreet)
               {
                  this.showInfoLayer("infrastructureBuildingInfoLayer",this._fieldInfoLayerProxy.getVoForView(null.billboardObjectVo) as FieldInfoLayerHeaderVo);
                  sendNotification(ApplicationNotificationConstants.GROUND_ITEM_BUFFGRID_MOVE,null.billboardObjectVo);
               }
               break;
            case ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_INFRASTRUCTURE_DECORATION:
               this.showInfoLayer("infrastructureDecorationInfoLayer",this._fieldInfoLayerProxy.getVoForView(null.billboardObjectVo) as FieldInfoLayerHeaderVo);
               sendNotification(ApplicationNotificationConstants.GROUND_ITEM_BUFFGRID_MOVE,null.billboardObjectVo);
               break;
            case ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_RESIDENTIAL:
               if(null.billboardObjectVo.isConnectedToStreet)
               {
                  this.showInfoLayer("residentialInfoLayer",this._fieldInfoLayerProxy.getVoForView(null.billboardObjectVo) as FieldInfoLayerHeaderVo);
                  this.addNeedIcons(null);
               }
               break;
            case ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_PRODUCTION:
               if(null.billboardObjectVo.isConnectedToStreet)
               {
                  this.showInfoLayer("productionInfoLayer",this._fieldInfoLayerProxy.getVoForView(null.billboardObjectVo) as FieldInfoLayerHeaderVo);
               }
               break;
            case ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_DECORATION:
               this.showInfoLayer("decorationInfoLayer",this._fieldInfoLayerProxy.getVoForView(null.billboardObjectVo) as FieldInfoLayerHeaderVo);
               break;
            case ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_POWERPLANT:
               if(null.billboardObjectVo.isConnectedToStreet)
               {
                  this.showInfoLayer("decorationInfoLayer",this._fieldInfoLayerProxy.getVoForView(null.billboardObjectVo) as FieldInfoLayerHeaderVo);
               }
               break;
            case ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_EXPANSION:
               this.showInfoLayer("expansionInfoLayer",this._fieldInfoLayerProxy.getVoForView(null.billboardObjectVo) as FieldInfoLayerHeaderVo);
               break;
            case ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_NEEDSHOP:
               if(null.billboardObjectVo.isConnectedToStreet)
               {
                  this.showInfoLayer("needsInfoLayer",this._fieldInfoLayerProxy.getVoForView(null.billboardObjectVo) as FieldInfoLayerHeaderVo);
                  sendNotification(ApplicationNotificationConstants.GROUND_ITEM_BUFFGRID_MOVE,(null as ShopFieldObject).shopFieldObjectVo);
                  this.addNeedIcons(null);
               }
               break;
            case ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_BOULDER:
               this.showInfoLayer("boulderInfoLayer",this._fieldInfoLayerProxy.getVoForView(null.billboardObjectVo) as FieldInfoLayerHeaderVo);
               break;
            case ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_EVENT_SQUARE:
               this.showInfoLayer("citySquareInfoLayer",this._fieldInfoLayerProxy.getVoForView(null.billboardObjectVo) as FieldInfoLayerHeaderVo);
               break;
            case ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_TOWNHALL:
               this.showInfoLayer("townHallInfoLayer",this._fieldInfoLayerProxy.getVoForView(null.billboardObjectVo) as FieldInfoLayerHeaderVo);
               break;
            case ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_EMERGENCY:
               this.showInfoLayer("emergencyInfoLayer",this._fieldInfoLayerProxy.getVoForView(null.billboardObjectVo) as FieldInfoLayerHeaderVo);
               break;
            case ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_SECURITY_GRADE:
               this.showInfoLayer("securityGradeInfoLayer",this._fieldInfoLayerProxy.getVoForView(null.billboardObjectVo) as FieldInfoLayerHeaderVo);
               break;
            case ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_ACADEMY:
               if(null.billboardObjectVo.isConnectedToStreet)
               {
                  this.showInfoLayer("academyInfoLayer",this._fieldInfoLayerProxy.getVoForView(null.billboardObjectVo) as FieldInfoLayerHeaderVo);
               }
               break;
            case ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_CINEMA:
               this.showInfoLayer("cinemaInfoLayer",this._fieldInfoLayerProxy.getVoForView(null.billboardObjectVo) as FieldInfoLayerHeaderVo);
               break;
            case ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_SCHEDULED_DROP:
               this.showInfoLayer("scheduledDropInfoLayer",this._fieldInfoLayerProxy.getVoForView(null.billboardObjectVo) as FieldInfoLayerHeaderVo);
               break;
            case ApplicationNotificationConstants.FIELD_INFOLAYER_HIDE:
               if(this._currentInfoLayer)
               {
                  if(this._currentInfoLayer.styleName == "needsInfoLayer")
                  {
                     sendNotification(ApplicationNotificationConstants.GROUND_ITEM_BUFFGRID_VISIBILITY_CHANGED,false);
                     sendNotification(ApplicationNotificationConstants.HIDE_NEED_ICONS,true);
                     this._highlightObjectsProxy.resetHighlight();
                  }
                  else if(this._currentInfoLayer.styleName == "infrastructureBuildingInfoLayer" || this._currentInfoLayer.styleName == "infrastructureDecorationInfoLayer")
                  {
                     sendNotification(ApplicationNotificationConstants.GROUND_ITEM_BUFFGRID_VISIBILITY_CHANGED,false);
                     this._highlightObjectsProxy.resetHighlight();
                  }
                  else if(this._currentInfoLayer.styleName == "residentialInfoLayer")
                  {
                     sendNotification(ApplicationNotificationConstants.HIDE_NEED_ICONS,false);
                  }
               }
               this.removeInfoLayer();
               break;
            case ApplicationNotificationConstants.EVENTS_CHANGED:
            case ApplicationNotificationConstants.CONFIG_EVENTS_CHANGED:
               if(this._currentInfoLayer)
               {
                  if(this._currentInfoLayer.styleName == "citySquareInfoLayer")
                  {
                     this.removeInfoLayer();
                  }
               }
         }
      }
      
      private function showInfoLayer(param1:String, param2:FieldInfoLayerHeaderVo) : void
      {
         this.removeInfoLayer();
         if(param2)
         {
            if(!this._currentInfoLayer)
            {
               this._currentInfoLayer = new FieldInfoComponent();
               this._currentInfoLayer.styleName = param1;
            }
            if(!this._currentInfoLayer.parent)
            {
               this.component.addElement(this._currentInfoLayer);
            }
            this._currentInfoLayer.includeInLayout = true;
            this._currentInfoLayer.visible = true;
            this._currentInfoLayer.position = this._position;
            this._currentInfoLayer.data = param2;
         }
      }
      
      private function isoToStage(param1:BillboardObject) : Point
      {
         var _loc4_:Point = null;
         var _loc2_:FieldInfoLayerProxy = facade.retrieveProxy(FieldInfoLayerProxy.NAME) as FieldInfoLayerProxy;
         var _loc3_:FieldMediator = facade.retrieveMediator(FieldMediator.NAME) as FieldMediator;
         var _loc5_:Pt = IsoMath.isoToScreen(new Pt(param1.x + param1.width / 2,param1.y + param1.length / 2,_loc2_.isoView.currentZoom));
         _loc4_ = _loc3_.isoScene.container.localToGlobal(new Point(_loc5_.x,_loc5_.y));
         _loc4_.x = Math.round(_loc4_.x);
         _loc4_.y = Math.round(_loc4_.y);
         return _loc4_;
      }
      
      private function removeInfoLayer() : void
      {
         if(this._currentInfoLayer)
         {
            if(this._currentInfoLayer.parent)
            {
               this.component.removeElement(this._currentInfoLayer);
            }
            this._currentInfoLayer = null;
         }
      }
      
      public function get component() : Group
      {
         return super.viewComponent as Group;
      }
      
      private function addNeedIcons(param1:BillboardObject) : void
      {
         var _loc2_:Object = null;
         if(param1 is ShopFieldObject || param1 is ResidentialFieldObject)
         {
            _loc2_ = new Object();
            _loc2_.vo = param1.billboardObjectVo;
            _loc2_.rollOver = true;
            facade.sendNotification(ApplicationNotificationConstants.SHOW_NEED_ICONS,_loc2_);
         }
      }
   }
}

