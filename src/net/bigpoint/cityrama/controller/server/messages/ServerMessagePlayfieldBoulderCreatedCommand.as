package net.bigpoint.cityrama.controller.server.messages
{
   import net.bigpoint.cityrama.model.common.Cuboid;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldProxy;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.field.vo.BoulderObjectVo;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.preloader.FilePreloadServiceProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.BoulderVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.view.field.ui.components.factory.ServerTagToClassSelector;
   import net.bigpoint.util.VectorUtilities;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessagePlayfieldBoulderCreatedCommand extends SimpleCommand
   {
      
      public function ServerMessagePlayfieldBoulderCreatedCommand()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc12_:Boolean = true;
         var _loc13_:* = §§pop();
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         var _loc3_:GameConfigProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         var _loc4_:PlayfieldProxy = PlayfieldProxy(facade.retrieveProxy(PlayfieldProxy.NAME));
         var _loc5_:TimerProxy = facade.retrieveProxy(TimerProxy.NAME) as TimerProxy;
         var _loc6_:FilePreloadServiceProxy = facade.retrieveProxy(FilePreloadServiceProxy.NAME) as FilePreloadServiceProxy;
         var _loc7_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc8_:ConfigPlayfieldItemDTO = _loc3_.getConfigPlayfieldItemById(_loc2_.json.bo.c);
         var _loc9_:BoulderVo = new BoulderVo(_loc2_.json.bo,_loc8_);
         var _loc10_:Cuboid = new Cuboid(_loc9_.posX,_loc9_.posY,VectorUtilities.getMinValue(_loc8_.zLevels),_loc8_.sizeX,_loc8_.sizeY,_loc8_.zLevels.length);
         var _loc11_:BoulderObjectVo = BoulderObjectVo(ServerTagToClassSelector.getFieldObjectVoClassByTags(_loc8_,_loc10_,_loc5_,_loc3_,_loc4_));
         _loc11_.boulderVo = _loc9_;
         if(_loc12_)
         {
            _loc4_.playfieldDTO.boulders.push(_loc9_);
            if(_loc12_ || Boolean(_loc2_))
            {
               addr0137:
               PlayfieldObjectsProxy.addIconOffsets(_loc11_ as BillboardObjectVo,_loc6_);
               if(_loc12_)
               {
                  _loc7_.addGameObjectByData(_loc11_);
               }
            }
            return;
         }
         §§goto(addr0137);
      }
   }
}

