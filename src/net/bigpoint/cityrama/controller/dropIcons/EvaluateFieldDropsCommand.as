package net.bigpoint.cityrama.controller.dropIcons
{
   import as3isolib.geom.IsoMath;
   import as3isolib.geom.Pt;
   import flash.geom.Point;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerAssistTypeConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.dropIcons.vo.DropIconVO;
   import net.bigpoint.cityrama.model.field.fieldInfoLayer.FieldInfoLayerProxy;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPhaseDTO;
   import net.bigpoint.field3d.interfaces.IObject3D;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class EvaluateFieldDropsCommand extends SimpleCommand
   {
      
      private var _startPoint:Point;
      
      public function EvaluateFieldDropsCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc4_:FieldInfoLayerProxy = null;
         var _loc5_:Pt = null;
         var _loc2_:IObject3D = param1.getBody().tO;
         var _loc3_:ConfigPhaseDTO = param1.getBody().cP;
         if(Boolean(_loc3_) && Boolean(_loc2_))
         {
            _loc4_ = facade.retrieveProxy(FieldInfoLayerProxy.NAME) as FieldInfoLayerProxy;
            _loc5_ = IsoMath.isoToScreen(new Pt(_loc2_.x + _loc2_.width / 2,_loc2_.y + _loc2_.length / 2,_loc4_.isoView.currentZoom));
            this._startPoint = new Point(_loc5_.x,_loc5_.y);
            this.prepareDropIcon(_loc3_);
         }
      }
      
      private function prepareDropIcon(param1:ConfigPhaseDTO) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:ConfigOutputDTO = null;
         var _loc5_:ConfigOutputDTO = null;
         var _loc6_:DropIconVO = null;
         var _loc7_:Boolean = false;
         var _loc8_:int = 0;
         var _loc2_:Vector.<ConfigOutputDTO> = new Vector.<ConfigOutputDTO>();
         for each(_loc4_ in param1.listEntryOutputs)
         {
            if(_loc4_.outputAmount > 0)
            {
               _loc2_.push(_loc4_);
            }
         }
         for each(_loc5_ in _loc2_)
         {
            _loc6_ = null;
            _loc3_ = 0;
            if(_loc5_.resourceConfig != null)
            {
               _loc6_ = new DropIconVO("",this._startPoint);
               switch(_loc5_.resourceConfig.type)
               {
                  case ServerResConst.RESOURCE_EXPERIENCE:
                  case ServerResConst.RESOURCE_PRODUCTIONPOINTS:
                  case ServerResConst.RESOURCE_EDUCATIONPOINTS:
                  case ServerResConst.RESOURCE_VIRTUALCURRENCY:
                  case ServerResConst.RESOURCE_REALCURRENCY:
                     _loc6_.type = _loc5_.resourceConfig.type;
                     break;
                  case ServerResConst.RESOURCE_HAPPINESS_POSITIVE:
                  case ServerResConst.RESOURCE_HAPPINESS_NEGATIVE:
                  case ServerResConst.RESOURCE_ENERGY_POSITIVE:
                  case ServerResConst.RESOURCE_ENERGY_NEGATIVE:
                  case ServerResConst.RESOURCE_POPULATION:
               }
            }
            else if(_loc5_.goodConfig != null)
            {
               _loc7_ = _loc5_.goodConfig.isTaggedGoodByTagName(ServerTagConstants.GOOD_EVENT);
               if(_loc5_.goodConfig.isMedal)
               {
                  _loc3_ = _loc5_.outputAmount;
               }
               _loc6_ = new DropIconVO(String(_loc5_.goodConfig.gfxId),this._startPoint,_loc7_);
            }
            else if(_loc5_.assistConfig != null)
            {
               if(_loc5_.assistConfig.type == ServerAssistTypeConstants.HARVEST_HELPER_RESIDENTIAL)
               {
                  _loc6_ = new DropIconVO(_loc5_.assistConfig.type,this._startPoint);
               }
            }
            if(_loc6_)
            {
               if(_loc6_.type != "")
               {
                  if(_loc3_)
                  {
                     _loc8_ = 0;
                     while(_loc8_ < _loc3_)
                     {
                        facade.sendNotification(ApplicationNotificationConstants.DROPICON_HANDLE_ISO_DROP,_loc6_);
                        _loc8_++;
                     }
                  }
                  else
                  {
                     facade.sendNotification(ApplicationNotificationConstants.DROPICON_HANDLE_ISO_DROP,_loc6_);
                  }
               }
            }
         }
      }
   }
}

