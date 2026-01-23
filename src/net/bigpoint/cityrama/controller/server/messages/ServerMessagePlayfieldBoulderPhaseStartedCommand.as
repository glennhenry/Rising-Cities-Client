package net.bigpoint.cityrama.controller.server.messages
{
   import net.bigpoint.cityrama.constants.ServerOutputConstants;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPhaseDTO;
   import net.bigpoint.cityrama.model.server.vo.server.PhaseDTO;
   import net.bigpoint.cityrama.model.vo.ConfigFactory;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.BoulderFieldObject;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessagePlayfieldBoulderPhaseStartedCommand extends SimpleCommand implements ICommand
   {
      
      public function ServerMessagePlayfieldBoulderPhaseStartedCommand()
      {
         super();
      }
      
      private static function checkSameOutputAndAdd(param1:Vector.<ConfigOutputDTO>) : Vector.<ConfigOutputDTO>
      {
         var _loc2_:Vector.<ConfigOutputDTO> = null;
         var _loc5_:Boolean = false;
         var _loc6_:ConfigOutputDTO = null;
         var _loc7_:ConfigOutputDTO = null;
         var _loc8_:ConfigOutputDTO = null;
         var _loc9_:ConfigOutputDTO = null;
         var _loc3_:Vector.<ConfigOutputDTO> = new Vector.<ConfigOutputDTO>();
         var _loc4_:Vector.<ConfigOutputDTO> = new Vector.<ConfigOutputDTO>();
         for each(_loc6_ in param1)
         {
            _loc5_ = false;
            if(_loc6_.goodConfig != null)
            {
               for each(_loc8_ in _loc3_)
               {
                  if(_loc6_.configId == _loc8_.configId)
                  {
                     _loc8_.outputAmount += _loc6_.outputAmount;
                     _loc5_ = true;
                     break;
                  }
               }
               if(!_loc5_)
               {
                  _loc3_.push(_loc6_);
               }
            }
            else if(_loc6_.resourceConfig != null)
            {
               for each(_loc9_ in _loc4_)
               {
                  if(_loc6_.configId == _loc9_.configId)
                  {
                     _loc9_.outputAmount += _loc6_.outputAmount;
                     _loc5_ = true;
                     break;
                  }
               }
               if(!_loc5_)
               {
                  _loc4_.push(_loc6_);
               }
            }
         }
         _loc2_ = _loc3_;
         for each(_loc7_ in _loc4_)
         {
            _loc2_.push(_loc7_);
         }
         return _loc2_;
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc6_:Vector.<PhaseDTO> = null;
         var _loc7_:Object = null;
         var _loc8_:Object = null;
         var _loc9_:ConfigPhaseDTO = null;
         var _loc10_:Vector.<ConfigOutputDTO> = null;
         var _loc11_:ConfigOutputDTO = null;
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         var _loc3_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc4_:GameConfigProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         var _loc5_:BoulderFieldObject = _loc3_.getBillboardById(_loc2_.json.bid) as BoulderFieldObject;
         if(_loc5_ != null)
         {
            _loc6_ = new Vector.<PhaseDTO>();
            for each(_loc7_ in _loc2_.json.ph)
            {
               _loc6_.push(ConfigFactory.buildPhaseDTOForConfigPlayfieldItem(_loc7_,_loc5_.boulderObjectVo.configPlayfieldItemVo));
            }
            _loc5_.boulderObjectVo.activePhases = _loc6_;
            _loc8_ = {};
            _loc8_.eo = _loc2_.json.out;
            if(_loc8_.eo.length > 0)
            {
               _loc9_ = new ConfigPhaseDTO(_loc8_);
               _loc10_ = new Vector.<ConfigOutputDTO>();
               for each(_loc11_ in _loc9_.listEntryOutputs)
               {
                  if(_loc11_.type == ServerOutputConstants.GOOD)
                  {
                     _loc11_.goodConfig = _loc4_.config.goods[_loc11_.configId];
                  }
                  else if(_loc11_.type == ServerOutputConstants.RESOURCE)
                  {
                     _loc11_.resourceConfig = _loc4_.config.resources[_loc11_.configId];
                  }
                  _loc10_.push(_loc11_);
               }
               _loc10_ = checkSameOutputAndAdd(_loc10_);
               _loc9_.listEntryOutputs = _loc10_;
               _loc5_.boulderObjectVo.boulderVo.currentOutput = _loc10_;
               _loc5_.boulderObjectVo.informationFloaterPhase = _loc9_;
            }
            else
            {
               _loc5_.boulderObjectVo.informationFloaterPhase = new ConfigPhaseDTO(null);
            }
            _loc5_.billboardObjectVo.userInteractionLocked = true;
            _loc5_.invalidateBoulderDemolitionAssetManager();
         }
         _loc5_.billboardObjectVo.invalidate();
      }
   }
}

