package net.bigpoint.cityrama.controller
{
   import net.bigpoint.cityrama.model.FlashVarsProxy;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.preloader.CvTagProxy;
   import net.bigpoint.cityrama.model.preloader.FilePreloadServiceProxy;
   import net.bigpoint.cityrama.model.preloader.FileRuntimeLoadServiceProxy;
   import net.bigpoint.cityrama.model.server.vo.LoadingItemVo;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class GameConfigNewCommand extends SimpleCommand
   {
      
      public function GameConfigNewCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:LoadingItemVo = null;
         var _loc10_:CvTagProxy = null;
         var _loc11_:* = null;
         var _loc12_:* = null;
         var _loc2_:GameConfigProxy = GameConfigProxy(facade.retrieveProxy(GameConfigProxy.NAME));
         var _loc3_:FilePreloadServiceProxy = FilePreloadServiceProxy(facade.retrieveProxy(FilePreloadServiceProxy.NAME));
         var _loc4_:FileRuntimeLoadServiceProxy = FileRuntimeLoadServiceProxy(facade.retrieveProxy(FileRuntimeLoadServiceProxy.NAME));
         var _loc5_:FlashVarsProxy = FlashVarsProxy(facade.retrieveProxy(FlashVarsProxy.NAME));
         var _loc6_:Vector.<LoadingItemVo> = _loc2_.getSwfLoadingList();
         _loc7_ = "<LoaderMax maxConnections=\"2\" load=\"false\">";
         _loc8_ = "<LoaderMax maxConnections=\"2\" load=\"true\">";
         for each(_loc9_ in _loc6_)
         {
            if(_loc9_.path.indexOf(".png") == -1)
            {
               if(_loc9_.preload == false)
               {
                  _loc7_ = _loc7_ + "<SWFLoader noCache=\"false\" name=\"" + _loc9_.name + "\" url=\"" + _loc5_.path + _loc9_.path + "\" />";
               }
               else if(_loc9_.path.indexOf("8000.swf") == -1)
               {
                  _loc8_ = _loc8_ + "<SWFLoader noCache=\"false\" name=\"" + _loc9_.name + "\" url=\"" + _loc5_.path + _loc9_.path + "\" />";
               }
            }
            else if(_loc9_.preload == false)
            {
               _loc7_ = _loc7_ + "<ImageLoader noCache=\"false\" name=\"" + _loc9_.name + "\" url=\"" + _loc5_.path + _loc9_.path + "\" />";
            }
            else
            {
               _loc8_ = _loc8_ + "<ImageLoader noCache=\"false\" name=\"" + _loc9_.name + "\" url=\"" + _loc5_.path + _loc9_.path + "\" />";
            }
         }
         _loc10_ = facade.retrieveProxy(CvTagProxy.NAME) as CvTagProxy;
         _loc7_ = _loc7_ + "<SWFLoader noCache=\"false\" name=\"ResidentialBase\" url=\"" + _loc5_.path + _loc10_.getCvTagPath("swf/playfield/basements/residentialBase.swf") + "\" />";
         _loc7_ = _loc7_ + "<SWFLoader noCache=\"false\" name=\"ShopBase\" url=\"" + _loc5_.path + _loc10_.getCvTagPath("swf/playfield/basements/shopBase.swf") + "\" />";
         _loc7_ = _loc7_ + "<SWFLoader noCache=\"false\" name=\"PowerplantBase\" url=\"" + _loc5_.path + _loc10_.getCvTagPath("swf/playfield/basements/powerplantBase.swf") + "\" />";
         _loc7_ = _loc7_ + "<SWFLoader noCache=\"false\" name=\"ProductionBase\" url=\"" + _loc5_.path + _loc10_.getCvTagPath("swf/playfield/basements/productionBase.swf") + "\" />";
         _loc7_ = _loc7_ + "<SWFLoader noCache=\"false\" name=\"DecorationBase\" url=\"" + _loc5_.path + _loc10_.getCvTagPath("swf/playfield/basements/decorationBase.swf") + "\" />";
         _loc7_ = _loc7_ + "<SWFLoader noCache=\"false\" name=\"SpecialBase\" url=\"" + _loc5_.path + _loc10_.getCvTagPath("swf/playfield/basements/specialBase.swf") + "\" />";
         _loc7_ = _loc7_ + "<SWFLoader noCache=\"false\" name=\"ConstructionSite\" url=\"" + _loc5_.path + _loc10_.getCvTagPath("swf/playfield/constructionsites.swf") + "\" />";
         _loc7_ = _loc7_ + "<SWFLoader noCache=\"false\" name=\"Bridge_assets\" url=\"" + _loc5_.path + _loc10_.getCvTagPath("swf/playfield/Bridge_assets.swf") + "\" />";
         _loc7_ = _loc7_ + "<SWFLoader noCache=\"false\" name=\"playfieldSwitchFieldObjects\" url=\"" + _loc5_.path + _loc10_.getCvTagPath("swf/playfield/playfieldSwitchFieldObjects.swf") + "\" />";
         _loc11_ = "<SWFLoader noCache=\"false\" name=\"PlayfieldExpansions\" url=\"" + _loc5_.path + _loc10_.getCvTagPath("swf/expansion/expansions.swf") + "\" />";
         _loc12_ = "<SWFLoader noCache=\"false\" name=\"PlayfieldBoulders\" url=\"" + _loc5_.path + _loc10_.getCvTagPath("swf/boulder/boulder.swf") + "\" />";
         _loc7_ += _loc12_;
         _loc7_ = _loc7_ + _loc11_;
         _loc7_ = _loc7_ + EventAssetPackageLoaderFactory.getLoaderXML(_loc5_.path,_loc10_);
         _loc8_ = _loc8_ + "<DataLoader noCache=\"false\" name=\"iconOffsetXML\" url=\"" + _loc5_.path + _loc10_.getCvTagPath("xml/iconOffset.xml") + "\"/>";
         _loc8_ = _loc8_ + "</LoaderMax>";
         _loc7_ += "</LoaderMax>";
         _loc3_.service.addLoaderByXML(new XML(_loc8_));
         _loc3_.load();
         _loc4_.service.addLoaderByXML(new XML(_loc7_));
      }
   }
}

