package net.bigpoint.cityrama.model.vo
{
   public class BestsellerVo
   {
      
      public static const GUI_INFOLAYER_STARTER:String = "pack.starter";
      
      public static const GUI_INFOLAYER_PROD_STARTER:String = "pack.productionstarter";
      
      public static const GUI_INFOLAYER_EDU_STARTER:String = "pack.studentstarter";
      
      public static const GUI_INFOLAYER_EMERG_STARTER:String = "pack.emergencystarter";
      
      public static const GUI_INFOLAYER_BUYRC:String = "action.buyrc";
      
      public static const GUI_INFOLAYER_CFA:String = "action.cashforaction";
      
      public static const GUI_INFOLAYER_SOON:String = "ad.commingsoon";
      
      private var _libName:String;
      
      private var _imageName:String;
      
      private var _goldBG:Boolean;
      
      private var _teaserText:String;
      
      private var _locked:Boolean;
      
      private var _clickCommand:String;
      
      private var _guiInfolayerLocaKey:String;
      
      public function BestsellerVo(param1:String, param2:String, param3:Boolean, param4:String, param5:String, param6:Boolean = false, param7:String = null)
      {
         super();
         this._libName = param1;
         this._imageName = param2;
         this._goldBG = param3;
         this._teaserText = param4;
         this._locked = param6;
         this._clickCommand = param7;
         this._guiInfolayerLocaKey = param5;
      }
      
      public function get imageName() : String
      {
         return this._imageName;
      }
      
      public function set imageName(param1:String) : void
      {
         this._imageName = param1;
      }
      
      public function get libName() : String
      {
         return this._libName;
      }
      
      public function set libName(param1:String) : void
      {
         this._libName = param1;
      }
      
      public function get goldBG() : Boolean
      {
         return this._goldBG;
      }
      
      public function set goldBG(param1:Boolean) : void
      {
         this._goldBG = param1;
      }
      
      public function get teaserText() : String
      {
         return this._teaserText;
      }
      
      public function set teaserText(param1:String) : void
      {
         this._teaserText = param1;
      }
      
      public function get locked() : Boolean
      {
         return this._locked;
      }
      
      public function get clickCommand() : String
      {
         return this._clickCommand;
      }
      
      public function set clickCommand(param1:String) : void
      {
         this._clickCommand = param1;
      }
      
      public function get guiInfolayerLocaKey() : String
      {
         return this._guiInfolayerLocaKey;
      }
   }
}

