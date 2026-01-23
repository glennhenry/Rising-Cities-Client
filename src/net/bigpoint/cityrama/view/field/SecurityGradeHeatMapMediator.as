package net.bigpoint.cityrama.view.field
{
   import as3isolib.display.IsoGroup;
   import as3isolib.display.primitive.IsoRectangle;
   import as3isolib.enum.IsoOrientation;
   import as3isolib.graphics.BitmapFill;
   import as3isolib.graphics.Stroke;
   import com.greensock.TweenMax;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.controller.infrastructure.heatmap.ListenMouseMoveForChangeHeatmapCommand;
   import net.bigpoint.cityrama.model.ApplicationModeProxy;
   import net.bigpoint.cityrama.model.baseView.BasementViewProxy;
   import net.bigpoint.cityrama.model.common.SecurityMatrix;
   import net.bigpoint.cityrama.model.field.PlayfieldExpansionsProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldProxy;
   import net.bigpoint.cityrama.model.field.vo.ExpansionFieldObjectVo;
   import net.bigpoint.cityrama.model.infrastructure.SecurityMatrixProxy;
   import net.bigpoint.cityrama.model.infrastructure.vo.SecurityStatusVo;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsGlobalVariables;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigSecurityGradeDTO;
   import net.bigpoint.cityrama.model.urbies.SpawnProxy;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class SecurityGradeHeatMapMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "SecurityGradeHeatMapMediator";
      
      public static const RED:uint = 4294935552;
      
      public static const GREEN:uint = 4278255414;
      
      public static const YELLOW:uint = 4294377216;
      
      private static const WHITE:uint = 4289374890;
      
      private static const RANGE_RECT_COLOR:uint = 6152958;
      
      private const BLOCKED_BY_DEVICE:uint = 291923558;
      
      private const HEATRECTCONTAINERALPHA:Number = 0.5;
      
      private var _matrixProxy:SecurityMatrixProxy;
      
      private var _spawnProxy:SpawnProxy;
      
      private var _appmodeProxy:ApplicationModeProxy;
      
      private var _basementViewProxy:BasementViewProxy;
      
      private var _fireHeatMap:BitmapData;
      
      private var _policeHeatMap:BitmapData;
      
      private var _hospitalHeatMap:BitmapData;
      
      private var _heatMapDict:Dictionary;
      
      private var tilesize:Number;
      
      private var _heatRect:IsoRectangle;
      
      private var _playfieldExpansionsProxy:PlayfieldExpansionsProxy;
      
      private var maxSize:Rectangle;
      
      private var _currentViewedType:String = "";
      
      private var _heatFill:BitmapFill;
      
      private var _oldBitmapData:BitmapData;
      
      private var _oldMousePoint:Point;
      
      private var _tempBMPdata:BitmapData;
      
      private var showDelay:TweenMax;
      
      private var _rangeRects:Vector.<IsoRectangle>;
      
      public function SecurityGradeHeatMapMediator(param1:String = null, param2:Object = null)
      {
         super(param1,param2);
      }
      
      private function prepare() : void
      {
         this._heatMapDict = new Dictionary();
         this._heatMapDict[ServerTagConstants.POLICE_DEPARTMENT] = this._policeHeatMap;
         this._heatMapDict[ServerTagConstants.FIRE_DEPARTMENT] = this._fireHeatMap;
         this._heatMapDict[ServerTagConstants.HOSPITAL] = this._hospitalHeatMap;
         this._matrixProxy = facade.retrieveProxy(SecurityMatrixProxy.NAME) as SecurityMatrixProxy;
         this._spawnProxy = facade.retrieveProxy(SpawnProxy.NAME) as SpawnProxy;
         this._basementViewProxy = facade.retrieveProxy(BasementViewProxy.NAME) as BasementViewProxy;
         this._appmodeProxy = facade.retrieveProxy(ApplicationModeProxy.NAME) as ApplicationModeProxy;
         this._playfieldExpansionsProxy = facade.retrieveProxy(PlayfieldExpansionsProxy.NAME) as PlayfieldExpansionsProxy;
         var _loc1_:PlayfieldProxy = facade.retrieveProxy(PlayfieldProxy.NAME) as PlayfieldProxy;
         this.maxSize = _loc1_.maxUsablePlayfieldSize;
         this.tilesize = _loc1_.tileSize;
         this._rangeRects = new <IsoRectangle>[new IsoRectangle(),new IsoRectangle(),new IsoRectangle()];
         for each(var _loc2_ in this._rangeRects)
         {
            null.setSize(1,1,0);
            null.strokes = [new Stroke(2,RANGE_RECT_COLOR)];
         }
         this.prepareRangeRects();
      }
      
      private function getHeatmap(param1:SecurityMatrix, param2:String) : BitmapData
      {
         var _loc3_:Number = NaN;
         var _loc5_:SecurityStatusVo = null;
         var _loc7_:int = 0;
         var _loc4_:BitmapData = new BitmapData(this.maxSize.width + this.maxSize.x,this.maxSize.height + this.maxSize.y,true,16777215);
         _loc4_.lock();
         var _loc6_:int = this.maxSize.x;
         while(_loc6_ < this.maxSize.width)
         {
            _loc7_ = this.maxSize.y;
            while(_loc7_ < this.maxSize.height + this.maxSize.y)
            {
               if(!this.isOutsideActivePlayfield(_loc6_,_loc7_))
               {
                  _loc3_ = WHITE;
                  _loc5_ = param1.getTileInformation(_loc6_,_loc7_,param2);
                  if(_loc5_ != null && _loc5_.level != 0 && Boolean(_loc5_.level))
                  {
                     switch(_loc5_.level)
                     {
                        case SecurityStatusVo.LEVEL_1:
                           _loc3_ = RED;
                           break;
                        case SecurityStatusVo.LEVEL_2:
                           _loc3_ = YELLOW;
                           break;
                        case SecurityStatusVo.LEVEL_3:
                           _loc3_ = GREEN;
                           break;
                        case SecurityStatusVo.BLOCKED_BY_DEVICE:
                           _loc3_ = this.BLOCKED_BY_DEVICE;
                     }
                  }
                  _loc4_.setPixel32(_loc6_ - this.maxSize.x,_loc7_ - this.maxSize.y,_loc3_);
               }
               _loc7_++;
            }
            _loc6_++;
         }
         _loc4_.unlock();
         return _loc4_;
      }
      
      private function isOutsideActivePlayfield(param1:int, param2:int) : Boolean
      {
         var _loc3_:ExpansionFieldObjectVo = null;
         var _loc4_:Rectangle = null;
         for each(_loc3_ in this._playfieldExpansionsProxy.validExpansionsInactive)
         {
            _loc4_ = _loc3_.matrixCoordinates;
            if(_loc4_.containsPoint(new Point(param1,param2)))
            {
               return true;
            }
         }
         return false;
      }
      
      public function showHeatMap(param1:String) : void
      {
         this.component.removeAllChildren();
         this.prepareRangeRects();
         this._currentViewedType = param1;
         this._heatRect = new IsoRectangle();
         var _loc2_:PlayfieldProxy = facade.retrieveProxy(PlayfieldProxy.NAME) as PlayfieldProxy;
         this.maxSize = _loc2_.maxUsablePlayfieldSize;
         this._heatRect.setSize(this.maxSize.width * this.tilesize,this.maxSize.height * this.tilesize,0);
         this._heatRect.moveTo(this.maxSize.x * this.tilesize,this.maxSize.y * this.tilesize,0);
         this._heatRect.strokes = [];
         var _loc3_:BitmapData = this.getHeatmap(this._matrixProxy.securityMatrix,param1);
         this._heatMapDict[param1] = _loc3_;
         this._oldBitmapData = _loc3_.clone();
         this._matrixProxy.validate(param1);
         var _loc4_:Matrix = new Matrix();
         _loc4_.scale(this.tilesize,this.tilesize);
         this._heatFill = new BitmapFill(this._heatMapDict[param1],IsoOrientation.XY,_loc4_);
         this._heatRect.fills = [this._heatFill];
         this._heatRect.container.alpha = 0;
         TweenMax.to(this._heatRect.container,1.5,{"alpha":this.HEATRECTCONTAINERALPHA});
         this.component.addChild(this._heatRect);
         sendNotification(ApplicationNotificationConstants.HIDE_ALL_ICONS);
         this._spawnProxy.enabled = false;
         if(!this._basementViewProxy.isBaseViewEnabled)
         {
            this._basementViewProxy.isBaseViewEnabled = true;
            this._basementViewProxy.setByUserAxn = false;
            this._basementViewProxy.changeBaseViewForAll();
         }
         facade.registerCommand(ApplicationNotificationConstants.MOUSE_MOVE_FOR_CHANGE_HEATMAP,ListenMouseMoveForChangeHeatmapCommand);
      }
      
      private function prepareRangeRects() : void
      {
         var _loc1_:IsoRectangle = null;
         for each(_loc1_ in this._rangeRects)
         {
            this.component.addChild(_loc1_);
            _loc1_.container.visible = false;
         }
      }
      
      override public function onRegister() : void
      {
         this.prepare();
         this.buildInitialHeatMaps();
      }
      
      private function buildInitialHeatMaps() : void
      {
         this._fireHeatMap = this.getHeatmap(this._matrixProxy.securityMatrix,ServerTagConstants.FIRE_DEPARTMENT);
         this._matrixProxy.validate(ServerTagConstants.FIRE_DEPARTMENT);
         this._policeHeatMap = this.getHeatmap(this._matrixProxy.securityMatrix,ServerTagConstants.POLICE_DEPARTMENT);
         this._matrixProxy.validate(ServerTagConstants.POLICE_DEPARTMENT);
         this._hospitalHeatMap = this.getHeatmap(this._matrixProxy.securityMatrix,ServerTagConstants.HOSPITAL);
         this._matrixProxy.validate(ServerTagConstants.HOSPITAL);
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.SECURITY_GRID_CHANGED];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         var _loc2_:String = param1.getName();
         switch(_loc2_)
         {
            case ApplicationNotificationConstants.SECURITY_GRID_CHANGED:
               this.redraw();
         }
      }
      
      private function redraw() : void
      {
         var _loc1_:IsoRectangle = null;
         if(this._currentViewedType != "")
         {
            for each(_loc1_ in this._rangeRects)
            {
               _loc1_.container.visible = false;
            }
            this.showHeatMap(this._currentViewedType);
         }
      }
      
      private function get component() : IsoGroup
      {
         return super.viewComponent as IsoGroup;
      }
      
      public function hide() : void
      {
         this._currentViewedType = "";
         this.component.removeAllChildren();
         sendNotification(ApplicationNotificationConstants.SHOW_ALL_ICONS);
         if(this._appmodeProxy.mode == ApplicationModeProxy.MODE_NORMAL)
         {
            this._spawnProxy.enabled = true;
         }
         facade.removeCommand(ApplicationNotificationConstants.MOUSE_MOVE_FOR_CHANGE_HEATMAP);
         this._oldBitmapData = null;
         if(this.showDelay)
         {
            this.showDelay.kill();
         }
         this._tempBMPdata = null;
         if(this._basementViewProxy.isBaseViewEnabled && !this._basementViewProxy.setByUserAxn)
         {
            this._basementViewProxy.isBaseViewEnabled = false;
            this._basementViewProxy.setByUserAxn = false;
            this._basementViewProxy.changeBaseViewForAll();
         }
      }
      
      public function updateSingleGradeProviderVisual(param1:Point, param2:Point, param3:Vector.<ConfigSecurityGradeDTO>, param4:Boolean) : void
      {
         if(this._oldMousePoint != null && this._oldMousePoint.x == param1.x && this._oldMousePoint.y == param1.y)
         {
            return;
         }
         this._oldMousePoint = param1;
         if(OptionsGlobalVariables.getInstance().highQuality && param4)
         {
            if(this.showDelay)
            {
               this.showDelay.kill();
            }
            this.showDelay = TweenMax.delayedCall(0.5,this.updateBitmapData,[param1,param2,param3]);
            this.updateRangeRect(param1,param2,param3);
         }
         else
         {
            this.updateRangeRect(param1,param2,param3);
         }
      }
      
      private function updateRangeRect(param1:Point, param2:Point, param3:Vector.<ConfigSecurityGradeDTO>) : void
      {
         var _loc4_:IsoRectangle = null;
         var _loc6_:String = null;
         var _loc7_:ConfigSecurityGradeDTO = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         for each(_loc4_ in this._rangeRects)
         {
            _loc4_.container.visible = false;
         }
         if(!(this._rangeRects[0] as IsoRectangle).hasParent)
         {
            this.prepareRangeRects();
         }
         var _loc5_:int = 0;
         if(param3.length > 0)
         {
            _loc6_ = param3[0].type;
            for each(_loc7_ in param3)
            {
               if(_loc7_.type == _loc6_)
               {
                  _loc8_ = _loc7_.rangeY * 2 + param2.y;
                  _loc9_ = _loc7_.rangeX * 2 + param2.x;
                  this._rangeRects[_loc5_].setSize(_loc9_ * this.tilesize,_loc8_ * this.tilesize,0);
                  this._rangeRects[_loc5_].container.visible = true;
                  _loc10_ = Math.round(param1.x - param2.x / 2) - _loc7_.rangeX;
                  _loc11_ = Math.round(param1.y - param2.y / 2) - _loc7_.rangeY;
                  this._rangeRects[_loc5_].moveTo(_loc10_ * this.tilesize,_loc11_ * this.tilesize,0);
                  if(++_loc5_ > this._rangeRects.length - 1)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      private function updateBitmapData(param1:Point, param2:Point, param3:Vector.<ConfigSecurityGradeDTO>) : void
      {
         var _loc4_:ConfigSecurityGradeDTO = null;
         var _loc9_:Number = NaN;
         if(this._heatMapDict[this._currentViewedType] == null || this._oldBitmapData == null)
         {
            return;
         }
         this._tempBMPdata = this._oldBitmapData.clone();
         this._tempBMPdata.lock();
         for each(_loc4_ in param3)
         {
            if(_loc4_.type == this._currentViewedType)
            {
               var _loc5_:int = _loc4_.rangeX * 2 + param2.x;
               var _loc6_:int = _loc4_.rangeY * 2 + param2.y;
               var _loc7_:int = Math.round(param1.x - param2.x / 2) - _loc4_.rangeX;
               var _loc8_:int = Math.round(param1.y - param2.y / 2) - _loc4_.rangeY;
               _loc9_ = 0;
               var _loc10_:int = 0;
            }
         }
         this._tempBMPdata.unlock();
         TweenMax.killTweensOf(this._heatRect.container);
         this._heatRect.container.alpha = 0;
         this._heatFill.source = this._tempBMPdata;
         this._heatRect.fills = [this._heatFill];
         TweenMax.to(this._heatRect.container,1.5,{"alpha":this.HEATRECTCONTAINERALPHA});
      }
      
      public function get tempBMPdata() : BitmapData
      {
         return this._tempBMPdata;
      }
      
      public function get currentViewedType() : String
      {
         return this._currentViewedType;
      }
      
      public function hideRangeRect() : void
      {
         var _loc1_:IsoRectangle = null;
         if(this._oldMousePoint)
         {
            this._oldMousePoint.x = this._oldMousePoint.y = -1;
         }
         for each(_loc1_ in this._rangeRects)
         {
            _loc1_.container.visible = false;
         }
      }
   }
}

