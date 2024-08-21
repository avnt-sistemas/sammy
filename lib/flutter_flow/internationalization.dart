import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['pt', 'en'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? ptText = '',
    String? enText = '',
  }) =>
      [ptText, enText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // LoginPage
  {
    '3ekixvg7': {
      'pt': 'sam.my',
      'en': '',
    },
    '4svb0l4m': {
      'pt': 'Olha quem voltou!',
      'en': '',
    },
    'bhd86nom': {
      'pt': 'No que posso te ajudar hoje?',
      'en': '',
    },
    'yj1cmrs0': {
      'pt': 'Seu e-mail',
      'en': '',
    },
    'd9ivuygm': {
      'pt': 'Sua senha',
      'en': '',
    },
    'm933r1hv': {
      'pt': 'Entrar',
      'en': '',
    },
    's35e3e5h': {
      'pt': 'ou se preferir use',
      'en': '',
    },
    'n7t66g4u': {
      'pt': 'Sua conta Google',
      'en': '',
    },
    '8ck04v68': {
      'pt': 'Você é novo aqui? ',
      'en': '',
    },
    'du9yvgeg': {
      'pt': 'Venha por aqui!',
      'en': '',
    },
    'oopvshxx': {
      'pt': 'Home',
      'en': '',
    },
  },
  // RegisterPage
  {
    't7f07b5a': {
      'pt': 'sam.my',
      'en': '',
    },
    'd86kxtin': {
      'pt': 'Prazer!',
      'en': '',
    },
    'c9stzcq2': {
      'pt': 'Eu sou o Sammy, seu de gestor de reservas!',
      'en': '',
    },
    '4riisl21': {
      'pt': 'Seu melhor e-mail!',
      'en': '',
    },
    'iwiqa19s': {
      'pt': 'Defina sua senha',
      'en': '',
    },
    'p5f0p8dv': {
      'pt': 'Repita para confirmar',
      'en': '',
    },
    'peednt3m': {
      'pt': 'Clique e cadastre-se!',
      'en': '',
    },
    'wu30yz44': {
      'pt': 'ou se preferir use',
      'en': '',
    },
    'ft7ad5c9': {
      'pt': 'Sua conta Google',
      'en': '',
    },
    's73jn826': {
      'pt': 'Já é cadastrado? ',
      'en': '',
    },
    'mqijj18y': {
      'pt': 'Venha por aqui!',
      'en': '',
    },
    '50qgkrqa': {
      'pt': 'Home',
      'en': '',
    },
  },
  // FirstAccess
  {
    'siwjv0s7': {
      'pt': 'sam.my',
      'en': '',
    },
    'ealki5zn': {
      'pt': 'Quase lá!',
      'en': '',
    },
    'jasttay1': {
      'pt': 'Eu já me apresentei, agora é sua vez!',
      'en': '',
    },
    'fm2z8lbp': {
      'pt': 'Qual o seu nome?',
      'en': '',
    },
    'kwff93x8': {
      'pt': 'Encontrar um lugar pra ficar',
      'en': '',
    },
    'fl8crzkr': {
      'pt': 'Oferecer apartamentos',
      'en': '',
    },
    'w2uq8x7g': {
      'pt': 'Prestar serviços',
      'en': '',
    },
    '6rzh6h9g': {
      'pt': 'Em que irei te ajudar?',
      'en': '',
    },
    'j7queawq': {
      'pt': 'Search for an item...',
      'en': '',
    },
    '4f2lflwv': {
      'pt': 'Qual o nome da sua empresa?',
      'en': '',
    },
    'tfhoewi4': {
      'pt': 'Tudo pronto, vamos lá!',
      'en': '',
    },
    'ehgqv1ww': {
      'pt': 'Home',
      'en': '',
    },
  },
  // ListApartments
  {
    'hefc7g7u': {
      'pt': 'sam.my',
      'en': '',
    },
    'f8ibe5mt': {
      'pt': 'Apartamentos',
      'en': '',
    },
    '9ywyrbie': {
      'pt': 'Aqui você encontra todos os seus apartamentos cadastrados!',
      'en': '',
    },
    '2bs2ey2r': {
      'pt': 'Digite aqui para pesquisar....',
      'en': '',
    },
    'mqwyfsid': {
      'pt': '   Cadastre um novo aqui!',
      'en': '',
    },
    'xww1rv3l': {
      'pt': 'Apartamentos',
      'en': '',
    },
  },
  // AddApartment
  {
    '15fe0vu2': {
      'pt': 'sam.my',
      'en': '',
    },
    'jln91pfw': {
      'pt': 'Novo apartamento',
      'en': '',
    },
    '5iekps5p': {
      'pt':
          'Preencha os campos abaixo e clique em cadastrar, é rápido e fácil!',
      'en': '',
    },
    'vurpqjgd': {
      'pt': 'Como voce costuma identificar esse apartamento?',
      'en': '',
    },
    'kybdutd0': {
      'pt': 'Nome/Número de identificação',
      'en': '',
    },
    'www78t3u': {
      'pt': 'O que esse apartamento tem a oferecer?',
      'en': '',
    },
    '7ndcj56n': {
      'pt': 'Cama de casal',
      'en': '',
    },
    '0t8jj4aq': {
      'pt': 'Apto com cama de casal',
      'en': '',
    },
    'rxgr7erp': {
      'pt': 'Ar condicionado',
      'en': '',
    },
    'iqgghkuy': {
      'pt': 'Apto com ar condicionado',
      'en': '',
    },
    'ucthovi6': {
      'pt': 'Frigobar',
      'en': '',
    },
    '3mtt3aa1': {
      'pt': 'Apto com frigobar',
      'en': '',
    },
    'jjyq9a93': {
      'pt': 'Qual o estado atual do apartamento?',
      'en': '',
    },
    'oib4hulg': {
      'pt': 'Disponível (Vago)',
      'en': '',
    },
    'mhsdrrxz': {
      'pt': 'Reservado (Ocupado)',
      'en': '',
    },
    '8b77xbow': {
      'pt': 'Em manutenção (Ocupado)',
      'en': '',
    },
    '81angiso': {
      'pt': 'Aguardando limpeza (Ocupado)',
      'en': '',
    },
    'yz8l0yvx': {
      'pt': 'Seleciona a melhor opção ',
      'en': '',
    },
    'tkcws8gs': {
      'pt': 'Digite aqui se preferir...',
      'en': '',
    },
    '9ek7qsux': {
      'pt': 'Clique aqui para cadastrar',
      'en': '',
    },
    'wqhybgb6': {
      'pt': 'Home',
      'en': '',
    },
  },
  // UpdateApartment
  {
    'iykepysu': {
      'pt': 'sam.my',
      'en': '',
    },
    '3ux4cimo': {
      'pt': 'Precisa alterar algo? É só mudar ai em baixo!',
      'en': '',
    },
    '6ns8t7ia': {
      'pt': 'Como voce costuma identificar esse apartamento?',
      'en': '',
    },
    'yq70mqlu': {
      'pt': 'Nome/Número de identificação',
      'en': '',
    },
    'jqtp3twg': {
      'pt': 'O que esse apartamento tem a oferecer?',
      'en': '',
    },
    'ysb5zxjd': {
      'pt': 'Cama de casal',
      'en': '',
    },
    'hhkga330': {
      'pt': 'Apto com cama de casal',
      'en': '',
    },
    'uxhwdknm': {
      'pt': 'Ar condicionado',
      'en': '',
    },
    '5d3n9knw': {
      'pt': 'Apto com ar condicionado',
      'en': '',
    },
    'de65q9rh': {
      'pt': 'Frigobar',
      'en': '',
    },
    'xsrw1sy5': {
      'pt': 'Apto com frigobar',
      'en': '',
    },
    'pul8osak': {
      'pt': 'Qual o estado atual do apartamento?',
      'en': '',
    },
    'y8on0cna': {
      'pt': 'Disponível (Vago)',
      'en': '',
    },
    '0rcbu6it': {
      'pt': 'Reservado (Ocupado)',
      'en': '',
    },
    'o7ftcgbq': {
      'pt': 'Em manutenção (Ocupado)',
      'en': '',
    },
    '9uvbawjn': {
      'pt': 'Aguardando limpeza (Ocupado)',
      'en': '',
    },
    '6i1o07iz': {
      'pt': 'Seleciona a melhor opção ',
      'en': '',
    },
    'iohmrhbr': {
      'pt': 'Digite aqui se preferir...',
      'en': '',
    },
    'gmfw7qmk': {
      'pt': 'Clique aqui para salvar',
      'en': '',
    },
    'f8g2pxta': {
      'pt': 'Home',
      'en': '',
    },
  },
  // ListBookAppointment
  {
    'gh9p0ggm': {
      'pt': 'sam.my',
      'en': '',
    },
    'of3gfz6m': {
      'pt': 'Reservas',
      'en': '',
    },
    'nnsf5coe': {
      'pt': 'Aqui você pode ver toras as reservas!',
      'en': '',
    },
    '7xztjpg0': {
      'pt': 'Digite aqui para pesquisar....',
      'en': '',
    },
    'c3dshcfe': {
      'pt': 'Fazer reserva',
      'en': '',
    },
    'kbkpb9pb': {
      'pt': 'Reservas',
      'en': '',
    },
  },
  // AddAppointment
  {
    'x16op76a': {
      'pt': 'sam.my',
      'en': '',
    },
    '2agvq83b': {
      'pt': 'Fazer reserva',
      'en': '',
    },
    'wcg6vlcq': {
      'pt':
          'Preencha os campos abaixo e clique em cadastrar, é rápido e fácil!',
      'en': '',
    },
    'bfmyki67': {
      'pt': 'A reserva será para qual apartamento?',
      'en': '',
    },
    '7o5dxj31': {
      'pt': 'Selecione o apartamento',
      'en': '',
    },
    'up3hnwce': {
      'pt': 'Digite aqui se preferir...',
      'en': '',
    },
    '7onvjmg7': {
      'pt': 'Para quem é a reserva?',
      'en': '',
    },
    'ytvdy5b0': {
      'pt': 'Nome do locatário',
      'en': '',
    },
    'pq2twemp': {
      'pt': 'E o telefone pra contato?',
      'en': '',
    },
    'f45hkdym': {
      'pt': 'Telefone pra contato',
      'en': '',
    },
    'kvahhwdg': {
      'pt': 'Qual a data e hora de entrada?',
      'en': '',
    },
    'j5q3gagy': {
      'pt': 'Clique no ícone para mudar',
      'en': '',
    },
    'b2798a36': {
      'pt': 'E a data e hora de saída?',
      'en': '',
    },
    '8rrtk5bh': {
      'pt': 'Clique no ícone para mudar',
      'en': '',
    },
    'ffomrk1w': {
      'pt': 'Clique aqui para cadastrar',
      'en': '',
    },
    'ir4fehd4': {
      'pt': 'Criar reserva',
      'en': '',
    },
  },
  // UpdateAppointment
  {
    's6se9dsx': {
      'pt': 'sam.my',
      'en': '',
    },
    'rc90tpn6': {
      'pt': 'Atualizar reserva',
      'en': '',
    },
    'g440y9c2': {
      'pt':
          'Preencha os campos abaixo e clique em cadastrar, é rápido e fácil!',
      'en': '',
    },
    'b5q6j5c4': {
      'pt': 'A reserva será para qual apartamento?',
      'en': '',
    },
    '7w1lgbrg': {
      'pt': 'Selecione o apartamento',
      'en': '',
    },
    'a2ekicvk': {
      'pt': 'Digite aqui se preferir...',
      'en': '',
    },
    '46d4pqw2': {
      'pt': 'Para quem é a reserva?',
      'en': '',
    },
    'w5irc8on': {
      'pt': 'Nome do locatário',
      'en': '',
    },
    'hps12hz8': {
      'pt': 'E o telefone pra contato?',
      'en': '',
    },
    '4k1latv3': {
      'pt': 'Telefone pra contato',
      'en': '',
    },
    'e3gw4q49': {
      'pt': 'Qual a data e hora de entrada?',
      'en': '',
    },
    '0hmm6bqb': {
      'pt': 'Clique no ícone para mudar',
      'en': '',
    },
    'a1dpexki': {
      'pt': 'E a data e hora de saída?',
      'en': '',
    },
    'gygyskqf': {
      'pt': 'Clique no ícone para mudar',
      'en': '',
    },
    'c8ddewmh': {
      'pt': 'Clique aqui para salvar',
      'en': '',
    },
    'bkkgzm97': {
      'pt': 'Criar reserva',
      'en': '',
    },
  },
  // HomePage
  {
    'a0u26lnb': {
      'pt': 'sam.my',
      'en': '',
    },
    'zmr2r04r': {
      'pt': 'Próximas reservas',
      'en': '',
    },
    'xwcjm8mf': {
      'pt': '21/08 17:30',
      'en': '',
    },
    'hukzgygu': {
      'pt': 'Kitnet 9',
      'en': '',
    },
    'puw2bbye': {
      'pt': 'Guilherme Almeida',
      'en': '',
    },
    'lqxfuuub': {
      'pt': '21/08 17:30',
      'en': '',
    },
    'ybo5vqoi': {
      'pt': 'Kitnet 9',
      'en': '',
    },
    'c1sqhnmp': {
      'pt': 'Guilherme Almeida',
      'en': '',
    },
    '1quqmxap': {
      'pt': 'Apartamentos vagos',
      'en': '',
    },
    'pdp2gzpo': {
      'pt': 'Kitnet 9',
      'en': '',
    },
    'xbn2niyz': {
      'pt': 'Kitnet 9',
      'en': '',
    },
    's1ili3t4': {
      'pt': 'Próximos à liberar',
      'en': '',
    },
    '7buv8sqz': {
      'pt': '21/08 17:30',
      'en': '',
    },
    'v35i7uyp': {
      'pt': 'Guilherme Almeida',
      'en': '',
    },
    'soo24on0': {
      'pt': '21/08 17:30',
      'en': '',
    },
    'fu3ho5o3': {
      'pt': 'Guilherme Almeida',
      'en': '',
    },
    'mw16uz9z': {
      'pt': 'Em manutenção',
      'en': '',
    },
    'vx5p61uc': {
      'pt': 'Kitnet 12',
      'en': '',
    },
    'ndiwkele': {
      'pt': 'Kitnet 9',
      'en': '',
    },
    'vhjx1m2c': {
      'pt': 'Início',
      'en': 'Home',
    },
  },
  // ConfirmApartmentDeleteDialog
  {
    'nt51i8mp': {
      'pt': 'Você tem certeza disso?',
      'en': '',
    },
    'f8f5ttby': {
      'pt':
          'Você está prestes a excluir esse cadastro! Tem certeza disso?\nApós clicar em \"Excluir\" não terá mais como voltar para trás!',
      'en': '',
    },
    'c75pgo86': {
      'pt': 'Cancelar',
      'en': '',
    },
    'quj085k4': {
      'pt': 'Excluir',
      'en': '',
    },
  },
  // ConfirmAppointmentDeleteDialog
  {
    '2dh754ud': {
      'pt': 'Você tem certeza disso?',
      'en': '',
    },
    'la0gb2df': {
      'pt':
          'Você está prestes a excluir esse cadastro! Tem certeza disso?\nApós clicar em \"Excluir\" não terá mais como voltar para trás!',
      'en': '',
    },
    'c4au69d2': {
      'pt': 'Cancelar',
      'en': '',
    },
    'ahavnejw': {
      'pt': 'Excluir',
      'en': '',
    },
  },
  // Miscellaneous
  {
    '8sx5pg6d': {
      'pt': '',
      'en':
          'An error occurred while trying to register your user! Original error: [error]',
    },
    'yoh7lunn': {
      'pt':
          'Lhe enviamos um e-mail com as instruções para redefinição da senha!',
      'en': 'Password reset email sent!',
    },
    'veuswafc': {
      'pt': 'Você precisa me informar seu E-mail',
      'en': 'Email is required!',
    },
    'pb1idqzx': {
      'pt':
          'O Número de telefone inválido ou não informado! O Número precisa iniciar com +DDI',
      'en': 'Phone number required and has to start with +.',
    },
    '8168v70s': {
      'pt': 'As senhas não conhecídem!',
      'en': 'Passwords don\'t match',
    },
    '7wx3t169': {
      'pt': 'Digite o código de verificação',
      'en': 'Enter SMS verification code',
    },
    'h23ic4cg': {
      'pt': '',
      'en':
          'Too long since most recent sign in. Sign in again fegore deletin your account',
    },
    'ols3ojed': {
      'pt':
          'Muito tempo desde o último login. Entre novamente antes de excluir sua conta',
      'en':
          'Too long since most recent sign in. Sign in again fegore deletin your account',
    },
    '85k1r7hn': {
      'pt': 'E-mail de confirmação de alteração de e-mail enviado!',
      'en': 'Email change confirmaiton email sent!',
    },
    'vgfb3i7w': {
      'pt': 'Este e-mail já está em uso por outra conta',
      'en': 'Email already in use by another account',
    },
    'ngicich5': {
      'pt': 'E-mail e/ou senha inválido(s)!',
      'en': 'Invalid email and/or password!',
    },
    'wqtwn33l': {
      'pt': 'O arquivo não tem um formato válido!',
      'en': 'Invalid file format!',
    },
    'vmc1kk1s': {
      'pt': 'Enviando arquivo...',
      'en': 'Uploading file...',
    },
    'd050d8mu': {
      'pt': 'Arquivo enviado com sucesso!',
      'en': 'Success!',
    },
    'gutyxqyu': {
      'pt': 'Ocorreu um erro ao enviar o arquivo',
      'en': 'Failde to upload data',
    },
    'tt0i04q5': {
      'pt': '',
      'en': '',
    },
    'rsc5eyuy': {
      'pt': '',
      'en': '',
    },
    'hpiz273j': {
      'pt': '',
      'en': '',
    },
    'k8z39rqe': {
      'pt': '',
      'en': '',
    },
    'pumgydvi': {
      'pt': '',
      'en': '',
    },
    '7yc7xf3x': {
      'pt': '',
      'en': '',
    },
    'vlk34wef': {
      'pt': '',
      'en': '',
    },
    '9oqo30n7': {
      'pt': '',
      'en': '',
    },
    '2is4glv8': {
      'pt': '',
      'en': '',
    },
    'o7vdb1ju': {
      'pt': '',
      'en': '',
    },
  },
].reduce((a, b) => a..addAll(b));
